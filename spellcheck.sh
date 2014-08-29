#!/bin/sh

for tt in *.tex
do
    aspell check $tt -p ./words.dic
done
