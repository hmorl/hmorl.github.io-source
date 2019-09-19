#!/bin/bash

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project in temporary public folder
hugo

# Go to public repo
cd ../hmorl.github.io

# Remove everything except hidden .git files
rm -r *

# Go back to source
cd ../hmorl.github.io-source

# Copy files from public to the public repo
cp -a public/. ../hmorl.github.io/

# Remove the temp public folder
rm -rf public

# Go to public repo
cd ../hmorl.github.io

# Add changes to git
git add .

# Commit changes
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos
git push origin master

# Go back to website source
cd ../hmorl.github.io-source

# Add source changes to git
git add .

# Commit source changes
git commit -m "$msg"

# Push source
git push origin master