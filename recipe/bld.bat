@rem See https://github.com/PADrend/ThirdParty 
copy "%RECIPE_DIR%\CMakeLists.txt" .
copy "%RECIPE_DIR%\lpsolveConfig.cmake.in" .
if errorlevel 1 exit 1

cmake -LAH -G "Ninja"                             ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%"     ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"        ^
    -B build
if errorlevel 1 exit 1

cmake --build build --target install
if errorlevel 1 exit 1

