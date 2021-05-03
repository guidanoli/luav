# Lua Version Selector

<img align="right" width="200" src="logo.png">

luav lets you download, build and install multiple versions of Lua.
It is meant to be very portable among UNIX-like systems.
It was also inspired by [pyenv](https://github.com/pyenv/pyenv),
and modified for Lua.

## Main features

* download any version of Lua from [lua.org](lua.org)
  * New versions are scrapped from [lua.org/ftp](lua.org/ftp).
  * Checksums downloaded tarballs automatically with [`md5sum`](https://man7.org/linux/man-pages/man1/md5sum.1.html) and [`sha1sum`](https://man7.org/linux/man-pages/man1/sha1sum.1.html)


* build Lua from source with any compiler flags
* install and uninstall versions

  * Unintalling is supported for Lua 5.2 or later

## Dependencies

* [bash](https://www.gnu.org/software/bash/)
* [curl](https://curl.se/)
* [tar](https://en.wikipedia.org/wiki/Tar_(computing))
* [sudo](https://www.sudo.ws/)

## Setup

1. Clone this repository anywhere
2. Add the `bin` folder to your `PATH` variable
3. Run `eval "$(luav init)"` for autocomplete support

## Commands

```sh
$ luav help
Usage: luav <command> [<args>]
       luav help <command>
       luav help

Available commands:
     all  Lists all available versions of Lua
    cmds  Lists all available commands
    comp  Prints completion options for a command
     doc  Read the documentation of a specific Lua Version
     get  Download a specific version of Lua
    help  Prints information about commands
    info  Lists information about all available versions of Lua
    init  Prints luav initialization code
    list  Lists all downloaded versions of Lua
    make  Run make for a specific version of Lua
      rm  Remove Lua version
     set  Sets a Lua version as default
    tgts  Lists all main targets of a specific version of Lua
   unset  Unsets a Lua version as default
  update  Update index
```
