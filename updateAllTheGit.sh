#!/usr/bin/env zsh

# change this to the directory containing your repositories
DIR=~/dev

CURRENT_DIR=`pwd`

for repo in "${DIR}/"*; do
    if [[ -d "${repo}/.git" ]] then

        cd "${repo}"
        echo ""
        echo "\033[1mrepo: $repo\033[0m"

        echo "fetch"
        git fetch
        
        echo "git prune"
        git prune
        
        echo "git gc"
        git gc

        # our DEFAULT_BRANCH are always master, so no need to check what it is.
        # if it will change use this:
        # DEFAULT_BRANCH=`git remote show git remote | sed -n '/HEAD branch/s/.*: //p'`
        DEFAULT_BRANCH="master"
        echo "default branch: ${DEFAULT_BRANCH}"

        CURRENT_BRANCH=`git branch --show-current`
        echo "current branch: ${CURRENT_BRANCH}"

        echo "git stash"
        git stash

        if [[ "$DEFAULT_BRANCH" != "$CURRENT_BRANCH" ]]; then
            echo -e "git checkout ${DEFAULT_BRANCH}"
            git checkout $DEFAULT_BRANCH
        fi

        echo "git pull"
        git pull

        if [[ "$DEFAULT_BRANCH" != "$CURRENT_BRANCH" ]]; then
            echo -e "git checkout ${CURRENT_BRANCH}"
            git checkout $CURRENT_BRANCH
        fi

        echo "git stash pop"
        git stash pop
    fi
done

echo ""
echo "\033[1mpo update\033[0m"
po update

echo "\033[1mgcloud auth login\033[0m"
gcloud auth login

cd "${CURRENT_DIR}"
