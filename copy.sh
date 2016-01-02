#!/bin/bash
rm -rf Bemuse/Game/{music,engine}
mkdir -p Bemuse/Game/{music,engine}
GIT_DIR=../music/.git git archive HEAD | tar xv -C Bemuse/Game/music
find Bemuse/Game/music -name 'ogg*.bemuse' -delete
if [ -e ../bemuse/dist ]
then
  cp -Rv ../bemuse/dist/ Bemuse/Game/engine
else
  GIT_DIR=../bemusic.github.io/.git git archive HEAD | tar xv -C Bemuse/Game/engine
fi
