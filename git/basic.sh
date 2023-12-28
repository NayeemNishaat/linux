# STASH
git stash drop            # drop top hash, stash@{0}
git stash drop stash@{n}  # drop specific stash
git stash list            # Show stash list
git stash clear           # Drop all stashes

# CLEANUP
git gc --aggressive --prune=now

# CLEAN
git clean -f # Clean all untracked files
git clean -df # Remove untracked files and dirs from the working tree

# CHECKOUT
git checkout -- . # git checkout branch-name directory-or-file-name in general, you get the HEAD version of directory-or-file-name on branch branch-name, -- indicates explicit about the fact that you're not specifying the branch name

# REBASE
git rebase --root
git rebase -i HEAD~4 # Keep only last 4 commits

# Remove All Old Commits
git checkout --orphan newBranch
git add -A  # Add all files and commit them
git commit
git branch -D master  # Deletes the master branch
git branch -m master  # Rename the current branch to master
git push -f origin master  # Force push master branch to github
git gc --aggressive --prune=all     # remove the old files

# RESTORE
git restore . # Restore all unstaged changes in cwd
git restore path/to/file/to/revert # Restore a specific file

# CLONE
git clone --depth 1 https://github.com/user/repo.git
git clone --depth 1 --recurse-submodules --shallow-submodules https://github.com/user/repo.git
git clone -b main --single-branch [repo] --depth 1
