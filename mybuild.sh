#!/bin/bash
set -x
source /home/mergz/or-tools-wasm/pyodide/emsdk/emsdk/emsdk_env.sh
#PROJECT=or-tools TARGET=wasm32 tools/cross_compile.sh build --trace-source=CMakeLists.txt --debug-output -DBUILD_PYTHON=ON -DUSE_COINOR=OFF -USE_SCIP=OFF -DBUILD_SAMPLES=OFF -DBUILD_EXAMPLES=OFF -DBUILD_SHARED_LIBS=NO -DPython3_INCLUDE_DIR=/home/mergz/or-tools-wasm/pyodide/cpython/installs/python-3.12.7/include/python3.12 -DPython_LIBRARY=/home/mergz/or-tools-wasm/pyodide/cpython/installs/python-3.12.7/lib -DCMAKE_TOOLCHAIN_FILE=/home/mergz/or-tools-wasm/pyodide/emsdk/emsdk/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake 2>&1 | tee wasmoutput.log
cmake --build wasm --target python_package -v -j1 2>&1 | tee wasmbuild.log