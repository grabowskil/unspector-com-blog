#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Create commit message
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi

# Build the project.
echo ""
echo ""
echo "Building with hugo"
hugo

echo "info:"
git status

# Go To Public folder
cd public

if [ -z "$(git status --porcelain)" ]; then
    echo "nothing to commit"
	exit 0
else
    # Add 'public' (Github Pages repo) changes to git and commit/push.
	echo ""
	echo ""
	echo "Committing changes to $(pwd)"
	echo "remote branches:"
	git remote -v
	git status
	git add --all
	git commit -m "$msg"
	git push origin main
	git fetch
	git status

	# Add this repos changes to git and commit/push. First 'cd' out of public
	cd ..
	echo ""
	echo ""
	echo "Committing changes to $(pwd)"
	echo "remote branches:"
	git remote -v
	git add .
	git commit -m "$msg"
	git push origin main
fi

exit 0