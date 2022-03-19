# Project Documentation

> This will be populated by `prepare-docs` script

## Workflow

## Change swagger.json endpoint

Edit `swagger.json` endpoint in `package.json`:
``` json
"prepare-docs": "bash -l -c 'SWAGGER_ENDPOINT=<swagger-json-endpoint> ./prepare-docs.sh'"
```

## Populate documentation

To run the `prepare-docs` script:
``` bash
$ yarn run prepare-docs
```

## Start development server

To run the `docs:dev` script:
``` bash
$ yarn run docs:dev
```

## Build documentation

To run the `docs:build` script:
``` bash
$ yarn run docs:build
```
