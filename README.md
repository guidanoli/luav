# Lua Version Selector

This toolkit helps manage different versions of Lua.

## Setup

1. Clone this repository anywhere
2. Add the `bin` folder to your `PATH` variable

## Usage

```sh
$ luaver help
Usage: luaver <command> [<args>]
       luaver help <command>
       luaver help

Available commands:
    get  Download a specific version of Lua
   help  Prints information about commands
   list  Lists all downloaded versions of Lua
   make  Run make for a specific version of Lua
    set  Set Lua version as default
  unset  Unset Lua version as default
```

## Example

```sh
$ luaver get 5.4.2
$ CFLAGS=-fPIC luaver make 5.4.2
$ luaver set 5.4.2
```
