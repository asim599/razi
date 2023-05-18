#!/bin/bash

REMOTE_BRANCH="master"
LOCAL_BRANCH="master"
REPO_PATH="/root/razi"

cd "$REPO_PATH"

git fetch

LOCAL_COMMIT=$(git rev-parse "$LOCAL_BRANCH")

REMOTE_COMMIT=$(git rev-parse "origin/$REMOTE_BRANCH")

if [ "$LOCAL_COMMIT" = "$REMOTE_COMMIT" ]; then
  echo "Local branch is up to date. Pulling changes..."
  git pull origin "$REMOTE_BRANCH"
else
  echo "Local branch is not up to date. Skipping pull."
fi

