!/bin/bash

# @desc Auto-increment the BUILD NUMBER through all numbers (only) when a project is archived for export.

INFO="./CohesionIB/Targets/TWHub/Info.plist"

buildNum=$(/usr/libexec/Plistbuddy -c "Print CFBundleVersion" "${INFO}")

if [ -z "$buildNum" ]; then

echo "No build number found in $INFO"

exit 2

fi

buildNum=$(expr $buildNum + 1)

/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNum" "$INFO"

exit 0