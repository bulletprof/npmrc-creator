#!/bin/sh -l

if [[ -z "$INPUT_ORG_NAME" ]]; then
    echo "@nrichsolutions:registry=https://npm.pkg.github.com/" > .npmrc
else 
    echo "@$INPUT_ORG_NAME:registry=https://npm.pkg.github.com/" > .npmrc
fi

echo "//npm.pkg.github.com/:_authToken=$INPUT_AUTH_TOKEN" >> .npmrc

if [[ "$INPUT_ENV" == "clouz" ]]; then
    echo "here" 
    echo "$(ls)"
    echo "$(PWD)"
    mv .npmrc ./microservices/
    echo "$(ls microservices)" >> $GITHUB_OUTPUT
fi