# test-bun-standalone-multiplatform

## Repro steps

0. have docker installed
1. clone this repo
1. run `build:image` to build the docker image
1. run `bun run build:with-container` to use the container to build the standalone

An error will be thrown:

```
$ bun build index.ts --compile --outfile dist/my-app
   [3ms]  bundle  1 modules
error: failed to rename /app/.17af65cfdfdd7b7b-00000000.bun-build to dist/my-app: EXDEV
error: script "build:app" exited with code 1
error: script "build:with-container" exited with code 1
```

But the binary will be generated anyways.

On macOS, try to run the binary:

```bash
./dist/my-app
```

This will throw:

```
exec format error: ./dist/my-app
```
