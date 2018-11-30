@rem See https://github.com/PADrend/ThirdParty 
copy "%RECIPE_DIR%\CMakeLists.txt" .
copy "%RECIPE_DIR%\lpsolveConfig.cmake.in" .
if errorlevel 1 exit 1

mkdir build && cd build

cmake -LAH -G"NMake Makefiles"                               ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%"                ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"                   ^
    ..
if errorlevel 1 exit 1

cmake --build . --config Release --target install
if errorlevel 1 exit 1

