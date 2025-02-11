.PHONY: all ptf win web webrun test dbg deps clean

name = TuxScape2
SHELL := /bin/bash

all:
	cc main.c -I inc -Ofast -lglfw -lm -o release/$(name)_linux
	strip --strip-unneeded release/$(name)_linux
	upx --lzma --best release/$(name)_linux

ptf:
	cc assets/ptf.c -lm -Ofast -march=native -o assets/ptf

win:
	i686-w64-mingw32-gcc main.c -Ofast -I inc -L. -lglfw3dll -lm -o release/$(name)_windows.exe
	strip --strip-unneeded release/$(name)_windows.exe
	upx --lzma --best release/$(name)_windows.exe

web:
	source ~/emsdk/emsdk_env.sh && emcc main.c -DWEB -O3 --closure 1 -s FILESYSTEM=0 -s USE_GLFW=3 -s ENVIRONMENT=web -s TOTAL_MEMORY=1024MB -I inc -o release/web/index.html --shell-file t.html && emrun release/web/index.html

webrun:
	source ~/emsdk/emsdk_env.sh && emrun release/web/index.html

test:
	tcc main.c -I inc -DGL_DEBUG -Ofast -lglfw -lm -o /tmp/$(name)_test
	/tmp/$(name)_test
	rm /tmp/$(name)_test

dbg:
	cc main.c -I inc -DGL_DEBUG -fsanitize=undefined -fsanitize=address -ggdb3 -lglfw -lm -o release/$(name)_dbg
	release/$(name)_dbg

deps:
	@echo https://github.com/glfw/glfw/releases/
	@echo https://emscripten.org/docs/getting_started/downloads.html
	@echo https://github.com/upx/upx/releases/tag/v4.2.4
	sudo apt install --assume-yes libglfw3-dev libglfw3
	sudo apt install --assume-yes tcc
	sudo apt install --assume-yes upx-ucl
	sudo apt install --assume-yes mingw-w64

clean:
	rm -f release/$(name)_linux
	rm -f release/$(name)_windows.exe
	rm -f release/web/index.html
	rm -f release/web/index.js
	rm -f release/web/index.wasm
	rm -f assets/ptf