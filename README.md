fabric.el
=========

[![License GPL 22][badge-license]][LICENSE]
[![Build Status](https://api.travis-ci.org/nlamirault/fabric.el.png?branch=master)](http://travis-ci.org/nlamirault/fabric.el)
[![Melpa Status](http://melpa.milkbox.net/packages/fabric-badge.svg)](http://melpa.milkbox.net/#/fabric)
[![MELPA Stable](http://stable.melpa.org/packages/fabric-badge.svg)](http://stable.melpa.org/#/fabric)


Manage the [Fabric][] tasks from Emacs.

## Installation

The recommended way to install ``fabric.el`` is via [MELPA][]:

    M-x package-install fabric.el

or [Cask][]:

    (depends-on "fabric.el")


## Usage

### Available commands

* List tasks

        M-x fabric-list-commands

* Display Fabric help :

		M-x fabric-help


## Development

### Cask

``fabric.el`` use [Cask][] for dependencies
management. Install it and retrieve dependencies :

    $ curl -fsSkL https://raw.github.com/cask/cask/master/go | python
	$ export PATH="$HOME/.cask/bin:$PATH"
	$ cask

### Tests

* Launch unit tests :

        $ make clean test

## Support / Contribute

See [here](CONTRIBUTING.md)


## Changelog

A changelog is available [here](ChangeLog.md).

## Contact

Nicolas Lamirault <nicolas.lamirault@gmail.com>

[badge-license]: https://img.shields.io/badge/license-GPL_2-green.svg?style=flat
[LICENSE]: https://github.com/nlamirault/fabric.el/blob/master/LICENSE
[travis]: https://travis-ci.org/nlamirault/fabric.el
[badge-travis]: http://img.shields.io/travis/nlamirault/fabric.el.svg?style=flat
[GNU Emacs]: https://www.gnu.org/software/emacs/
[MELPA]: http://melpa.milkbox.net/
[Cask]: http://cask.github.io/
[Issue tracker]: https://github.com/nlamirault/fabric.el/issues
[Fabric]: http://www.fabfile.org/


