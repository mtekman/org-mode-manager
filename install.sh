#!/bin/bash

src_dir=`pwd`/src/

# install completion
sudo ln -s $src_dir/_org /usr/share/zsh/functions/Misc/

# install org mode
src_command=". $src_dir/orgnotes.sh"

[ "`grep -c \"$src_command\" ~/.zshrc`"  = "0" ] && echo "$src_command" >> ~/.zshrc
[ "`grep -c \"$src_command\" ~/.bashrc`" = "0" ] && echo "$src_command" >> ~/.bashrc

echo "Done. Please restart your shell."
