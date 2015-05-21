#!/bin/sh
eval $(git clone git@github.com:jcofta/dotfiles.git "$HOME/.dotfiles2")
eval $( "$HOME/.dotfiles2/bin/dfm install")
