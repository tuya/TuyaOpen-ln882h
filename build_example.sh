#!/usr/bin/sh
# 参数说明：
# $1 - params path: echo_app_top
# $2 - user cmd: build / clean / ...

print_not_null()
{
    if [ x"$1" = x"" ]; then
        return 1
    fi

    echo "$1"
}


set -e
cd `dirname $0`

BUILD_PARAM_DIR=$1
BUILD_PARAM_FILE=$BUILD_PARAM_DIR/build_param.config
. $BUILD_PARAM_FILE

EXAMPLE_NAME=$CONFIG_PROJECT_NAME         # the example name selected when ./configure
EXAMPLE_VER=$CONFIG_PROJECT_VERSION          # the version, default is 1.0.0
HEADER_DIR=$OPEN_HEADER_DIR           # the include file directory, default is build/include
LIBS_DIR=$OPEN_LIBS_DIR             # the libraries file directory, default is build/lib
LIBS=$PLATFORM_NEED_LIBS                 # the libraries file, default is libtuyaapp & libtuyaos
OUTPUT_DIR=$BIN_OUTPUT_DIR           # the output file directory, default is build/bin
USER_CMD=$2             # the user compile command
BOARD_NAME=$PLATFORM_BOARD

# echo EXAMPLE_NAME=$EXAMPLE_NAME
# echo EXAMPLE_VER=$EXAMPLE_VER
# echo HEADER_DIR=$HEADER_DIR
# echo LIBS_DIR=$LIBS_DIR
# echo LIBS=$LIBS
# echo OUTPUT_DIR=$OUTPUT_DIR
# echo USER_CMD=$USER_CMD
# echo BOARD_NAME=$BOARD_NAME
# exit 0

TOP_DIR=$(pwd)

if [ "$USER_CMD" = "build" ]; then
    USER_CMD=all
fi

make APP_BIN_NAME=$EXAMPLE_NAME APP_VERSION=$EXAMPLE_VER LIBS_DIR=$LIBS_DIR LIBS="$LIBS" OUTPUT_DIR=$OUTPUT_DIR HEADER_DIR="$HEADER_DIR" $USER_CMD -C ln882h_os

if [ x$USER_CMD = "xclean" ];then
	echo "*************************************************************************"
	echo "************************CLEAN SUCCESS************************************"
	echo "*************************************************************************"
	exit 0
fi

APP_BIN_NAME=$EXAMPLE_NAME
APP_VERSION=$EXAMPLE_VER
APP_BIN_DIR=${OUTPUT_DIR}

mkdir -p ${APP_BIN_DIR}
BIN_DIR=${TOP_DIR}/ln882h_os/output

cp ${BIN_DIR}/${APP_BIN_NAME}_UG_${APP_VERSION}.bin  ${APP_BIN_DIR}/${APP_BIN_NAME}_UG_${APP_VERSION}.bin
cp ${BIN_DIR}/${APP_BIN_NAME}_UA_${APP_VERSION}.bin  ${APP_BIN_DIR}/${APP_BIN_NAME}_UA_${APP_VERSION}.bin
cp ${BIN_DIR}/${APP_BIN_NAME}_QIO_${APP_VERSION}.bin ${APP_BIN_DIR}/${APP_BIN_NAME}_QIO_${APP_VERSION}.bin
cp ${BIN_DIR}/${APP_BIN_NAME}_${APP_VERSION}.asm  ${APP_BIN_DIR}/${APP_BIN_NAME}_${APP_VERSION}.asm
cp ${BIN_DIR}/${APP_BIN_NAME}_${APP_VERSION}.elf  ${APP_BIN_DIR}/${APP_BIN_NAME}_${APP_VERSION}.elf
cp ${BIN_DIR}/${APP_BIN_NAME}_${APP_VERSION}.map ${APP_BIN_DIR}/${APP_BIN_NAME}_${APP_VERSION}.map
