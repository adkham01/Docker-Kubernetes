#!/bin/bash

git add --all

read -p "Enter commit message: " commitMessage

git commit -m "$commitMessage"

current_branch=$(git branch --show-current)
git push origin "$current_branch"