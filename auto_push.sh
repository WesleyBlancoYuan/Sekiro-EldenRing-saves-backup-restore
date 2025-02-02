#!/bin/sh
eval $(ssh-agent -s)
ssh-add ~/.ssh/github_id_torresdyl_gmail_ed25519
git add --all 
read -p "Commit description: " desc 
read -p "Which branch to push? " branch
git commit -m "$desc" 
git push origin $branch
sleep 5