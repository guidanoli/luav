# Lua Version Selector

<img align="right" width="200" src="logo.png">

This toolkit helps manage different versions of Lua.

## Dependencies

bash, curl, sudo, tar and UNIX commands

## Main features

* Download any version of Lua from `lua.org`. The MD5 and SHA1 sums are checked automatically!

  ```sh
  luav get <version>
  ```

* Build from source with any compiler flags

  ```sh
  [CFLAGS=<flags..>] luav make <version> <targets...>
  ```

* Install and uninstall versions easily

  ```sh
  luav set <version>  # make install
  or
  luav unset <version>  # make uninstall
  or
  luav rm <version>  # remove source code
  ```

* Read the Lua documentation

  ```sh
  [BROWSER=<browser>] luav doc <version>
  ```

## Setup

1. Clone this repository anywhere
2. Add the `bin` folder to your `PATH` variable
3. Run `eval "$(luav init)"` for autocomplete support

## Usage

```sh
$ luav help
Lua Version Selector 1.1.4-5-g9831b01

Usage: luav <command> [<args...>]
       luav help <command>
       luav help

Available commands:
      all  List all indexed versions of Lua
     cmds  List all available luav commands
     comp  Print completion options for a luav command
      doc  Browse through the offline documentation of a version of Lua
      get  Download an indexed version of Lua
     help  Print information about a luav command or about all of them
     info  List information about all indexed versions of Lua
     init  Print initialization code for autocomplete support
     list  List all local versions of Lua
     make  Run make for a version of Lua
       rm  Remove a local version of Lua
      set  Set a Lua version as default
     tgts  List all main targets of a version of Lua
    unset  Unset a Lua version as default
   update  Update the version index
  version  Print the current version of luav
```
