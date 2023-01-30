#!/bin/sh -l

if [[ -z "$INPUT_ORG_NAME" ]]; then
    echo "@nrichsolutions:registry=https://npm.pkg.github.com/" > .npmrc
else 
    echo "@$INPUT_ORG_NAME:registry=https://npm.pkg.github.com/" > .npmrc
fi

echo "//npm.pkg.github.com/:_authToken=$INPUT_AUTH_TOKEN" >> .npmrc

if [[ -z "$INPUT_ENV" ]] && [[ "$INPUT_ENV" = "clouz" ]]; then
    echo "here" >> $GITHUB_OUTPUT
    echo "$(ls)" >> $GITHUB_OUTPUT
    echo "$(PWD)" >> $GITHUB_OUTPUT
    mv .npmrc ./microservices/
    echo "$(ls microservices)" >> $GITHUB_OUTPUT
fi