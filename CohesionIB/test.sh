# terminate the script if any process fails
set -e

# show commands as they execute
set -x

if which /usr/libexec/PlistBuddy >/dev/null; then

    
    INFO="./CohesionIB/Targets/CohesionIB/Info.plist"

    bundleVersion="$(/usr/libexec/PlistBuddy -c 'Print CFBundleShortVersionString' ${INFO})"
    buildSequence="$(/usr/libexec/PlistBuddy -c 'Print CFBundleVersion' ${INFO})"

    version="Release Cohesion ${bundleVersion}(${buildSequence})"

    echo version

else
  echo "error: /usr/libexec/PlistBuddy must be installed"
  exit 1
fi