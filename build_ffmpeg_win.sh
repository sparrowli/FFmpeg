#!/bin/sh


echo start compile ffmpeg on windows

./configure --arch=x86_64 --prefix=./win/x64 --extra-cflags=-I/mingw64/include --extra-ldflags=-L/mingw64/lib || exit 1

make -j8 install || exit
