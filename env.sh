# source env.sh while in the same directory to setup GO.

# if the environment has been setup before clean it up
if [ $GOBIN ]; then
    PATH=$(echo $PATH | sed -e "s;\(^$GOBIN:\|:$GOBIN$\|:$GOBIN\(:\)\);\2;g")
fi

TOP_DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Setting environment rooted at $TOP_DIR"

export GOPATH=$TOP_DIR
export GOBIN=$HOME/bin
export PATH=$GOBIN:$PATH

