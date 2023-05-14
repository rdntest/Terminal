#!/bin/bash
cd homework
mkdir dir_1 dir_2 dir_3
cd dir_1
touch 1.txt 2.txt 3.txt 1.json 2.json
mkdir dd_1 dd_2 dd_3
ls -la
mv {1.txt,2.txt} dir_2
