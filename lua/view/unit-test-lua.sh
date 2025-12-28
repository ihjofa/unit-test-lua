THIS_DIR_PATH=$(cd $(dirname $0); pwd)
TARGET_PATH=$(readlink -f "$1")

cd $THIS_DIR_PATH
lua $THIS_DIR_PATH/entrypoint.lua $TARGET_PATH
