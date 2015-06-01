#!/bin/bash

echo "Starting deployment"

TEMP_DIRECTORY="/tmp/__temp_static_content"
CURRENT_COMMIT=`git rev-parse HEAD`
ORIGIN_URL="github.com/npasserini/wisit15-site-harpjs.git"
ORIGIN_URL_WITH_CREDENTIALS="https://${GITHUB_TOKEN}@${ORIGIN_URL}"

-echo "Checking out gh-pages branch"
git checkout -B gh-pages || exit 1

echo "Removing old static content"
git rm -rf . || exit 1

echo "Copying newly generated static content"
cp -r ${TEMP_DIRECTORY}/* . || exit 1
cp ${TEMP_DIRECTORY}/.gitignore . || exit 1

echo "Pushing new content to $ORIGIN_URL"
git config user.name "Travis-CI" || exit 1
git config user.email "travis@uqbar-project.com" || exit 1
-
git add -A . || exit 1
git commit --allow-empty -m "Regenerated static content for $CURRENT_COMMIT" || exit 1
#git push --force --quiet "$ORIGIN_URL_WITH_CREDENTIALS" gh-pages > /dev/null 2>&1
git push --force "$ORIGIN_URL_WITH_CREDENTIALS" gh-pages

echo "Cleaning up temp files"
rm -Rf ${TEMP_DIRECTORY}

echo "Deployed successfully."
exit 0