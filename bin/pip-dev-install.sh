#!/bin/bash
# -*- coding: utf-8 -*-

DIR_BIN="$( cd "$(dirname "$0")" ; pwd -P )"
DIR_PROJECT_ROOT=$(dirname "${DIR_BIN}")

source ${DIR_BIN}/python-env.sh

print_colored_line $color_cyan "[DOING] pip install ${PACKAGE_NAME} in editable mode ..."
${BIN_PIP} install --editable ${DIR_PROJECT_ROOT}
