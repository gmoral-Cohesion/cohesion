# terminate the script if any process fails
set -e

# show commands as they execute
set -x

if which /usr/libexec/PlistBuddy >/dev/null; then

    
    INFO="./CohesionIB/Targets/TWHub/Info.plist"

    bundleVersion="$(/usr/libexec/PlistBuddy -c 'Print CFBundleShortVersionString' ${INFO})"
    buildSequence="$(/usr/libexec/PlistBuddy -c 'Print CFBundleVersion' ${INFO})"

    version="Release TWHub ${bundleVersion}(${buildSequence})"

    # Commit using the standard commit message and initiate CI
    commit_message="Version ${version}"

    git add "${PROJECT_DIR}/${INFOPLIST_FILE}"
    git commit -am "${commit_message}"

    # Apply a tag to the newly created commit
    tag="v${version}"
    git tag ${tag}
    
    git push origin
    git push origin refs/tags/${tag}
    
else
  echo "error: /usr/libexec/PlistBuddy must be installed"
  exit 1
fi