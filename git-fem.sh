#!/bin/bash

# Rename branch locally
git branch -m master mistress

# Push rename to GitHub
git push origin mistress

# Get parts or remote origin URL for changing GH default repo
URL=$(git config remote.origin.url)
SHORTURL=${URL//https:\/\/github.com\/}
USER=${SHORTURL%\/*}
REPO=$(basename $SHORTURL | sed 's/.git//')

# Select new default branch on GitHub
DATA="{\"name\":\"$REPO\",\"default_branch\":\"mistress\"}"
REPO_URL="https://api.github.com/repos/$USER/$REPO"
curl -3 -u $USER -d `echo $DATA` $REPO_URL

# Track the new branch
git config branch.mistress.merge refs/heads/mistress
