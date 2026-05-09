# How to use configuration files

- get newer version of neovim probably
- Move to ~/.config
- set the following env files in terminal config

```
    # This env variable as a default for nvim configuration
    set -x NVIM_APPNAME ./nvim-configs/minimal/
    # set the env variables to other paths for other neovim configs (in this case, one without lsp/ide stuff for learning purposes)
    function nvim-min
        set -x NVIM_APPNAME ./nvim-configs/minimal/
    end
```
