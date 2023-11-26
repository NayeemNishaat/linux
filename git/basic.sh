# STASH
git stash drop            # drop top hash, stash@{0}
git stash drop stash@{n}  # drop specific stash
git stash list            # Show stash list
git stash clear           # Drop all stashes

# CLEANUP
git gc --aggressive --prune=now

# REBASE
git rebase --root

# Remove All Old Commits
git checkout --orphan newBranch
git add -A  # Add all files and commit them
git commit
git branch -D master  # Deletes the master branch
git branch -m master  # Rename the current branch to master
git push -f origin master  # Force push master branch to github
git gc --aggressive --prune=all     # remove the old files
