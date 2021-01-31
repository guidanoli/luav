# Lua Version Selector

This toolkit helps manage different versions of Lua.

## Setup

1. Clone this repository anywhere
2. Add the `bin` folder to your `PATH` variable
3. Run `eval $(luaver init)` for autocomplete support

## Usage

```sh
$ luaver help
Usage: luaver <command> [<args>]
       luaver help <command>
       luaver help

Available commands:
   cmds  Lists all available commands
   comp  Prints completion data
    get  Download a specific version of Lua
   help  Prints information about commands
   init  Prints sourceable data to initialize luaver
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
