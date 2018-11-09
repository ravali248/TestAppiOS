node () {
	stage('Build') {
                echo 'Building..'

	script {
xcodeBuild appURL: '', assetPackManifestURL: '', buildDir: '', buildIpa: true, bundleID: '', bundleIDInfoPlistPath: '', cfBundleShortVersionStringValue: '', cfBundleVersionValue: '', configuration: 'Release', developmentTeamID: 'LSVVD8ZPH6', developmentTeamName: '', displayImageURL: '', fullSizeImageURL: '', generateArchive: true, ipaExportMethod: 'enterprise', ipaName: 'SampleAppJenkinsIOS', ipaOutputDirectory: '', keychainName: '', keychainPath: '', keychainPwd: '', logfileOutputDirectory: '', provisioningProfiles: [[provisioningProfileAppId: 'com.cognizantmobilityenterprise.-', provisioningProfileUUID: '54763f3e-f511-4a5c-8c5d-297fb34c2bd8']], sdk: '', signingMethod: 'manual', symRoot: '', target: '', thinning: '', xcodeProjectFile: '', xcodeProjectPath: 'SampleAppJenkinsIOS', xcodeSchema: 'SampleAppJenkinsIOS', xcodeWorkspaceFile: '', xcodebuildArguments: ''

	}	
        }
stage('upload') {
                echo 'Uploading to hockey..'

	script {
 	hockeyApp applications: [[apiToken: '7ae8e38f3771453c8ea7c61811be178f', downloadAllowed: false, filePath: '**/*.ipa', mandatory: false, notifyTeam: false, releaseNotesMethod: none(), uploadMethod: appCreation(false)]], debugMode: false, failGracefully: false

	}	
        }
}
