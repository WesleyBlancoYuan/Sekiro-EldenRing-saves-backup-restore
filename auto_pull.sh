#!/bin/sh
eval $(ssh-agent -s)
ssh-add ~/.ssh/github_id_torresdyl_gmail_ed25519
read -p "Which branch to pull? " branch
git pull origin $branch