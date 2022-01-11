#!/bin/bash
git submodule init
git submodule update
cd matrix/script.lightcontroll
git pull origin main
git submodule init
git submodule update
cd ../..
python3 _repo_generator.py
git add matrix/script.lightcontroll
git add matrix/zips/*
