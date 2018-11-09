HOCKEY_API_TOKEN="7ae8e38f3771453c8ea7c61811be178f"
APP_IDENTIFIER="fc42084aeeac4a59bd4e57708cb475d8"
cd SampleAppJenkinsIOS
#upload to hockey
curl \
-F "status=2" \
-F "notes= Azure pipelines" \
-F "notes_type=0" \
-F "ipa=@SampleAppJenkinsIOS.ipa" \
-H "X-HockeyAppToken: ${HOCKEY_API_TOKEN}" \
https://rink.hockeyapp.net/api/2/apps/${APP_IDENTIFIER}/app_versions/upload
if [ $? -ne 0 ];
then echo "Error: Uploading not successful"
exit 1
fi

