#!/usr/bin/env bash
set -ex

DESIGN_NAME='picorv32'
PLATFORM='asap7'
BASE_DIR=$(pwd)

export DESIGN_HOME=$BASE_DIR/designs
export DESIGN_CONFIG=$DESIGN_HOME/$PLATFORM/$DESIGN_NAME/config.mk
export WORK_HOME=$BASE_DIR/work

# First arg of script, else all
TARGET=${1:-all}

make \
    -C $BASE_DIR/../openroad-flow-scripts/flow \
    $TARGET