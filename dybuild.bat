REM emcc -o build\index.html main.cpp -Oz -std=c++14 --proxy-to-worker --profiling -s MAIN_MODULE=1 -s WASM=1 --pre-js preload.js -s BINARYEN_TRAP_MODE='js' -s ALLOW_MEMORY_GROWTH=1 -s EVAL_CTORS=0 -s DISABLE_EXCEPTION_CATCHING=0 && emcc side.cpp -Oz --profiling -o build\side.bc -s SIDE_MODULE=2 -s FORCE_FILESYSTEM=1 -s WASM=1 -s BINARYEN_TRAP_MODE='js' -s ALLOW_MEMORY_GROWTH=1 -s DISABLE_EXCEPTION_CATCHING=0 -s EVAL_CTORS=0 && emcc sidey.cpp -Oz --profiling -o build\sidey.bc -s SIDE_MODULE=2 -s FORCE_FILESYSTEM=1 -s WASM=1 -s BINARYEN_TRAP_MODE='js' -s ALLOW_MEMORY_GROWTH=1 -s DISABLE_EXCEPTION_CATCHING=0 -s EVAL_CTORS=0 && emcc build/side.bc build/sidey.bc -o build/side.wasm -Oz --profiling -s SIDE_MODULE=2 -s FORCE_FILESYSTEM=1 -s WASM=1 -s BINARYEN_TRAP_MODE='js' -s ALLOW_MEMORY_GROWTH=1 -s DISABLE_EXCEPTION_CATCHING=0 -s EVAL_CTORS=0 
emcc -o build\index.html main.cpp -Oz -std=c++14 --profiling -s MAIN_MODULE=1 -s WASM=1 --pre-js preload.js -s BINARYEN_TRAP_MODE='js' -s ALLOW_MEMORY_GROWTH=1 -s EVAL_CTORS=0 -s DISABLE_EXCEPTION_CATCHING=0 && emcc side.cpp -Oz --profiling -o build\side.bc -s SIDE_MODULE=2 -s FORCE_FILESYSTEM=1 -s WASM=1 -s BINARYEN_TRAP_MODE='js' -s ALLOW_MEMORY_GROWTH=1 -s DISABLE_EXCEPTION_CATCHING=0 -s EVAL_CTORS=0 && emcc sidey.cpp -Oz --profiling -o build\sidey.bc -s SIDE_MODULE=2 -s FORCE_FILESYSTEM=1 -s WASM=1 -s BINARYEN_TRAP_MODE='js' -s ALLOW_MEMORY_GROWTH=1 -s DISABLE_EXCEPTION_CATCHING=0 -s EVAL_CTORS=0 && emcc build/side.bc build/sidey.bc -o build/side.wasm -Oz --profiling -s SIDE_MODULE=2 -s FORCE_FILESYSTEM=1 -s WASM=1 -s BINARYEN_TRAP_MODE='js' -s ALLOW_MEMORY_GROWTH=1 -s DISABLE_EXCEPTION_CATCHING=0 -s EVAL_CTORS=0 
