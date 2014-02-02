fabric.el
=========

Manage the Fabric tasks from Emacs.

## Installation

The recommended way to install ``fabric.el`` is via [MELPA](http://melpa.milkbox.net/) or [Marmalade](http://marmalade-repo.org/).


## Usage

### Available commands

* List tasks

        M-x fabric-list-commands

* Display Fabric help :

		M-x fabric-help


## Development

### Cask

``fabric.el`` use [Cask](https://github.com/cask/cask) for dependencies
management. Install it and retrieve dependencies :

    $ curl -fsSkL https://raw.github.com/cask/cask/master/go | python
	$ export PATH="$HOME/.cask/bin:$PATH"
	$ cask

### Tests

* Launch unit tests :

        $ make clean test

## Changelog

A changelog is available [here](ChangeLog.md).

## Contact

Nicolas Lamirault <nicolas.lamirault@gmail.com>
