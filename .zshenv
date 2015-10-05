
# -------------------------------------
# パス
# -------------------------------------

# 重複する要素を自動的に削除
typeset -U path cdpath fpath manpath

PYENV_ROOT=(
    $HOME/.pyenv(N-/)
    $PYENV_ROOT
)
path=(
    /usr/local/bin(N-/)
    $HOME/bin(N-/)
    /usr/local/sbin(N-/)
    #$PYENV_ROOT/bin(N-/)
    $path
)
FUEL_DATA_PATH=(
    $HOME/prog/ladder/data(N-/)
)

if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi
