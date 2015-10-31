
# -------------------------------------
# パス
# -------------------------------------

# 重複する要素を自動的に削除
typeset -U path cdpath fpath manpath

PYENV_ROOT=(
    $HOME/.pyenv(N-/)
    $PYENV_ROOT
)
GOROOT=(
    /usr/local/opt/go/libexec(N-/)
    $GOROOT
)
GOPATH=(
    $HOME/.go(N-/)
    $GOPATH
    )
path=(
    $HOME/.rbenv/bin(N-/)
    /usr/local/bin(N-/)
    $HOME/bin(N-/)
    $HOME/local/bin(N-/)
    /usr/local/sbin(N-/)
    #$PYENV_ROOT/bin(N-/)
    $path
)
FUEL_DATA_PATH=(
    $HOME/prog/ladder/data(N-/)
)

eval "$(pyenv init -)"

SPARK_HOME=(
    $HOME/prog/tmp/spark-1.4.0-bin-hadoop2.6(N-/)
    $SPARK_HOME
)

if [ -d "${SPARK_HOME}" ]; then
    alias spark-submit="${SPARK_HOME}/bin/spark-submit"
    alias spark-shell="${SPARK_HOME}/bin/spark-shell"
fi

ADAM_HOME=(
    $HOME/prog/tmp/adam(N-/)
    $ADAM_HOME
)

if [ -d "${ADAM_HOME}" ]; then
    alias adam-submit="${ADAM_HOME}/bin/adam-submit"
    alias adam-shell="${ADAM_HOME}/bin/adam-shell"
fi

if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi

eval "$(rbenv init -)"
