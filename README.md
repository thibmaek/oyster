# Oyster

<!-- Banner & Badges. Badges should have newlines -->
![bash version 5](https://img.shields.io/badge/bash%20version-GNU%20bash%205-brightgreen.svg?style=flat-square)
![Latest release](https://img.shields.io/github/downloads/thibmaek/oyster/latest/total?style=flat-square)
![shellcheck0](https://img.shields.io/badge/linting-shellcheck-brightgreen.svg?style=flat-square)

The shell is your oyster!

Utilitily library for writing bash scripts. Think Javascripts Lodash but in Bash. This exposes some verbose functions you can use in a script to make code more readable. Supports sourcing from scripts or the shell, as well as executing scripts via the oyster shebang

Bash is powerful but its API is horrible. Oyster is for you if you are also tired of `printf "%s" "${$1^^}"`:

```bash
# Uppercasing a string in Bash:
$ printf "%s" "${$1^^}"

# Uppercasing a string with oyster:
$ oy::str.upper "$1"
```

## Table of Contents
<!-- - Must link to all Markdown sections in the file.
- Must start with the next section; do not include the title or Table of Contents headings.
- Must be at least one-depth: must capture all `##` headings. -->
- [Install](#install)
- [Usage](#usage)
- [API](#api)
- [Thanks](#thanks)
- [Contributing](#contributing)
- [License](#license)

## Install

Download the [latest release](https://github.com/thibmaek/oyster/releases) from the releases page and put somewhere on your filesystem:

```console
$ mkdir -p ~/.oyster
$ curl https://github.com/thibmaek/oyster/releases/download/v1.0.0/oyster-1.0.0.tar.gz -o oyster.tar.gz
$ tar xvf oyster-1.0.0 -C ~/.oyster && cd ~/.oyster
$ make install
```

This will install oyster in `/usr/local/bin/oyster`. If you have `~/bin` sourced on the path you can also run `make install_user` to install it there.

Confirm your installation worked (after rehashing your shell):

```console
$ osyter --version
oyster version: 1.0.0
```

> Because Oyster is a pure Bash implementation putting it in `/usr/local/bin` or anywhere else known to the shell PATH will merely act as a symlink under the hood. If `~/.oyster` is deleted, Oyster will stop working because the symlink breaks.

## Usage

### Oyster script

You can use it as a shebang in scripts. Your shell will look for `oyster` on the path, source all utilities and then execute your bash code just like a regular bash script with the added utilities:

```bash
#! /usr/bin/env oyster
set -e

oy::str.upper "uppercase me"
```

### Sourcing oyster from a regular bash script

If you want to bypass executing scripts via oyster you can also just source oyster's 'module' in your own scripts to make the utilities available.

```bash
#!/usr/bin/env bash
set -e

source ""
```

## API

### Thanks
<!-- - State anyone or anything that significantly helped with the development of your project.
- State public contact hyper-links if applicable. -->

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)

## License

MIT

For more info, see [license file](./LICENSE)
