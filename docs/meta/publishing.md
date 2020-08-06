# Publishing

Publishing a new version of the documentation to GitHub pages:

```sh
$ cd chaoswest-tv.github.io
$ mkdocs gh-deploy --config-file ../public-docs/mkdocs.yml --remote-branch master
```

Or use the comfortable way:

```sh
$ ./tools/publish.sh
```
