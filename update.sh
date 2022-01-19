#!/bin/bash
echo "update submodule"
git submodule init
git submodule update
cd matrix/script.lightcontroll
echo "pull last version of script.lightcontroll"
git pull origin main
echo "update submodule contained inside script.lightcontroll"
git submodule init
git submodule update
rm lightcontroller.py
cp lightcontroller/python3/lightcontroller.py lightcontroller.py
rm -rf lightcontroller
cd ../..
echo "Generate missing zips"
python3 _repo_generator.py
echo "reset script.lightcontroll manipulation for ziping"
cd matrix/script.lightcontroll
git stash
cd ../..
echo "update git and add new files"
git add matrix/script.lightcontroll
git add matrix/zips/*
echo "done"
echo "Please make the commit"
