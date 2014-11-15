### New Relic iOS SDK for Cordova and PhoneGap

The official New Relic iOS SDK plugin for Cordova and PhoneGap.

### Installation

- In your PhoneGap/Cordova project directory run this command:
```
cordova plugin add https://source.datanerd.us/mobile/newrelic-cordova-ios
```
- Open your project's config.xml file (located at \<project\>/platforms/ios/\<project\>/config.xml) and add your app's New Relic token to this line:
```
<preference name="NewRelicApplicationToken" value="<TokenID>" />
```
- Open the iOS project in Xcode (located in \<project\>/platforms/ios/\<project\>.xcodeproj)
- Click on your Project in the Project Navigator window, under Targets select your app, and click the Build Phases tab.
- Click the "+" at the top of the Build Phases section and select "New Run Script Phase".
- In the script text area (beneath the Shell line) enter this script, adding your New Relic token:
```
SCRIPT=`/usr/bin/find "${SRCROOT}" -name newrelic_postbuild.sh | head -n 1`
/bin/sh "${SCRIPT}" "<YOUR_TOKEN_HERE>"
```
- Now you can either run your app directly from Xcode or exit out and run your app via the command line. In several minutes, you should be able to see data being reported in your New Relic Mobile account.

### License

newrelic-cordova-ios plugin is licensed under the Apache 2 License. http://www.apache.org/licenses/LICENSE-2.0.html

NewRelicAgent.framework is Copyright (c) 2014 New Relic. All rights reserved.
For license details see https://docs.newrelic.com/docs/licenses/ios-agent-licenses
