#!/bin/bash

# set variable for tuannq-nii.github.io
OUT_DIR="sprime3dots.github.io"

# Generate static pages
bundle exec jekyll build -d $OUT_DIR

# Copy DATA files to OUt_DIR
# cp DATA/CNAME $OUT_DIR

# Commit and push to github
cd $OUT_DIR
git add .
git commit -m "Update"
git push -f origin main

