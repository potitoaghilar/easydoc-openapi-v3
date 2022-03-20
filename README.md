# Project Documentation

> This will be populated by `prepare-docs` script

## Global dependency

Install `widdershins` npm package globally in WSL:
``` bash :no-line-numbers
$ npm i -g widdershins
```

## Workflow

## Change swagger.json endpoint

Edit `swagger.json` endpoint in `package.json`:
``` json :no-line-numbers
"prepare-docs": "bash -l -c 'SWAGGER_ENDPOINT=<swagger-json-endpoint> ./prepare-docs.sh'"
```

## Populate documentation

To run the `prepare-docs` script:
``` bash :no-line-numbers
$ yarn run prepare-docs
```

## Start development server

To run the `docs:dev` script:
``` bash :no-line-numbers
$ yarn run docs:dev
```

## Build documentation

To run the `docs:build` script:
``` bash :no-line-numbers
$ yarn run docs:build
```
