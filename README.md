# Dir2uf2 Docker Action

This generates a .uf2 and a .bin file from a directory using the [dir2uf2](https://github.com/Gadgetoid/dir2uf2) app. To learn how this action was built, see "[Creating a Docker container action](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action)" in the GitHub Docs.

## Inputs

### `environment-file`

**Required** The name of the environment file. Default is `"enviro.txt"`.

### `file-name`

**Required** Name of the file to be generated without the extension. Default is `"output"`.

### `src-dir`

**Required** Path for the source directory. Default is `"."`.

## Outputs

### `uf2-file`

The generated .uf2 file.

### `bin-file`

The generated .bin file.

## Example usage

```yaml
uses: pavelaron/dir2uf2-action@main
with:
  environment-file: 'environment.txt'
  file-name: 'app'
  src-dir: 'src'
```
