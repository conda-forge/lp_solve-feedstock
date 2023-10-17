#!/bin/sh

# see https://github.com/PADrend/ThirdParty
cp ${RECIPE_DIR}/CMakeLists.txt ${RECIPE_DIR}/lpsolveConfig.cmake.in .

cmake -LAH -G "Ninja" \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  -B build
cmake --build build --target install --parallel ${CPU_COUNT}

