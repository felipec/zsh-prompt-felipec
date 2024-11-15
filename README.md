# felipec zsh prompt

A simple, nice and useful theme.

## Installation

You can simply source the plugin, first clone the repo:

    git clone https://github.com/felipec/zsh-prompt-felipec ~/.zsh/felipec

And then add the following to your `.zshrc`:

    source ~/.zsh/felipec/felipec.plugin.zsh

Alternatively you can use promptinit:

    fpath+=(~/.zsh/felipec)
    autoload -U promptinit && promptinit
    prompt felipec
