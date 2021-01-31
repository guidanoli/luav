# Lua Version Selector

This toolkit helps manage different versions of Lua.

## Setup

1. Clone this repository anywhere
2. Add the `bin` folder to your `PATH` variable
3. Run `eval "$(luaver init)"` for autocomplete support

## Usage

```sh
$ luaver help
Usage: luaver <command> [<args>]
       luaver help <command>
       luaver help

Available commands:
    all  Lists all available versions of Lua
   cmds  Lists all available commands
   comp  Prints completion options for a command
    get  Download a specific version of Lua
   help  Prints information about commands
   init  Prints luaver initialization code
   list  Lists all downloaded versions of Lua
   make  Run make for a specific version of Lua
    set  Sets a Lua version as default
  unset  Unsets a Lua version as default
```

## Example

```sh
$ luaver get 5.4.2                  # Downloads source code from lua.org
$ CFLAGS=-fPIC luaver make 5.4.2    # Compiles source code with -fPIC
$ luaver set 5.4.2                  # Installs Lua 5.4.2
```
