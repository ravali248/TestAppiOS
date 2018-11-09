
archiveFile="SampleAppJenkinsIOS/SampleAppJenkinsIOS.xcarchive"
exportPlistFile="export.plist"

echo GENERATING ARCHIVE FILE...

xcodebuild\
 -sdk iphoneos\
 -project "../SampleAppJenkinsIOS.xcodeproj"\
 -scheme "SampleAppJenkinsIOS"\
  clean archive\
 -archivePath "${archiveFile}"

#Check exit status
if [ $? != 0 ]; then
echo XCODEBUILD RETURNED: $?
echo -e "Xcodebuild archive process failed"
exit 1
else
echo ARCHIVE FILE GENERATED SUCCESSFULLY
fi

echo GENERATING EXPORT FILE...

xcodebuild\
 -exportArchive\
 -archivePath "${archiveFile}"\
 -exportPath "SampleAppJenkinsIOS$1"\
 -exportOptionsPlist "${exportPlistFile}"

#Check exit status
if [ $? != 0 ]; then
echo XCODEBUILD RETURNED: $?
echo -e "Xcodebuild export archive process failed"
exit 1
else
echo EXPORT FILE GENERATED SUCCESSFULLY
fi

