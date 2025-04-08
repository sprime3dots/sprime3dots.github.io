#!/bin/bash

# set variable for tuannq-nii.github.io
OUT_DIR="/tmp/sprime3dots.github.io"
# OUT_DIR="blogs"

# Generate static pages
bundle exec jekyll build -d $OUT_DIR

rm -rf /tmp/aaa
mkdir -p /tmp/aaa
git -C /tmp/aaa clone github_sprime3dots:sprime3dots/sprime3dots.github.io.git
rsync -avz /tmp/aaa/sprime3dots.github.io/.git $OUT_DIR/


# Copy DATA files to OUt_DIR
cp DATA/CNAME $OUT_DIR

# Commit and push to github
cd $OUT_DIR
git add .
git commit -m "Update"
git push -f origin main

