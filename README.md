# Create a .npmrc file for the Github Package Registry

Github action to create `.npmrc` file for Github packages in the root folder

Pass all sensitive data using secrets.

## Inputs

### `org_name` (optional)

The organization name, defaults to `nrichsoultions`

### `NPM_TOKEN` (required)

Auth token that is able to download files from the repository, can also be passed as env. It seems like passing it as a variable is preferred.

## Example usage

```ylm
uses: nRichSolutions/npmrc-creator@v1
with:
  auth_token: ${{ secrets.github_NPM_TOKEN }}
```

## Example output

```npmrc
@nrichsolutions:registry=https://npm.pkg.github.com/
//npm.pkg.github.com/:_authToken=31352d11daasdf769942919dsafas594a5d
```