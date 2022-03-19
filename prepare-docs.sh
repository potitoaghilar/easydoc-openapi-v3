#!/usr/bin/env bash

if [[ -z "${SWAGGER_ENDPOINT}" ]]; then
  echo "SWAGGER_ENDPOINT environmental variable not set"
  exit 1
fi

# Create temp directory
mkdir -p tmp

# Delete old documentation
rm docs/README.md

# Set NodeJS path
export PATH=/home/potito/.nvm/versions/node/v12.22.11/bin:$PATH

# Fetch Swagger Docs
wget -q $SWAGGER_ENDPOINT -O tmp/swagger.json

# Convert OpenAPI v3 docs to markdown
widdershins --environment env.json tmp/swagger.json -o tmp/README.md

# Get documentation name
export DOC_NAME=$(sed -n 2p tmp/README.md | awk -F': ' '{print $2}')

# Fix index
sed -i 's/# /## /g' tmp/README.md
sed -i 's/<h1.*>\(.*\)<\/h1>/## \1/' tmp/README.md
sed -i "s/## \($DOC_NAME\)/<h1>\1<\/h1>/" tmp/README.md

cp tmp/README.md docs/README.md

# Remove temp file
rm -r tmp
