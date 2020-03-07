#!/bin/bash
setup python3 python3-pip

if ! [ -x "$(command -v pyenv)" ]; then
    curl https://pyenv.run | bash
    echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> $HOME/.bashrc
    echo 'eval "$(pyenv init -)"' >> $HOME/.bashrc
    echo 'eval "$(pyenv virtualenv-init -)"' >> $HOME/.bashrc

    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
