# Lua Version Selector

<img align="right" width="200" src="logo.png">

luav lets you download, build and install multiple versions of Lua.
It is meant to be very portable among UNIX-like systems.
It was also inspired by [pyenv](https://github.com/pyenv/pyenv),
and modified for Lua.

## Main features

* download any version of Lua from [lua.org](https://www.lua.org)

  * all version information is scrapped from [lua.org/ftp](https://lua.org/ftp).
  * tarballs are checked with [`md5sum`](https://man7.org/linux/man-pages/man1/md5sum.1.html) and [`sha1sum`](https://man7.org/linux/man-pages/man1/sha1sum.1.html)

* build Lua from source with any compiler flags
* install and uninstall versions

## Dependencies

* [bash](https://www.gnu.org/software/bash/)
* [curl](https://curl.se/)
* [tar](https://en.wikipedia.org/wiki/Tar_(computing))

## Setup

1. Clone this repository anywhere
2. Add the `bin` folder to your `PATH` variable
3. Run `eval "$(luav init)"` for autocomplete support

## Commands

```sh
$ luav help
Lua Version Selector 1.1.5

Usage: luav <command> [<args...>]
       luav help <command>
       luav help

Available commands:
      all  List all indexed versions of Lua
     cmds  List all available luav commands
     comp  Print completion options for a luav command
      doc  Browse through the manual of a version of Lua
      get  Download an indexed version of Lua
     help  Print information about a luav command or about all of them
     info  List information about all indexed versions of Lua
     init  Print initialization code for autocomplete support
     list  List all local versions of Lua
     make  Run make for a version of Lua
       rm  Remove a local version of Lua
      set  Set a Lua version as default
     test  Run unit tests for luav commands
     tgts  List all main targets of a version of Lua
    unset  Unset a Lua version as default
   update  Update the version index
  version  Print the current version of luav
```
