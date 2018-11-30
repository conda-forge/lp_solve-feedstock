#!/bin/sh

# see https://github.com/PADrend/ThirdParty
cp ${RECIPE_DIR}/CMakeLists.txt ${RECIPE_DIR}/lpsolveConfig.cmake.in .

mkdir build && cd build

cmake \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  ..
make install -j${CPU_COUNT}

