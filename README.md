
></br>
># [ D E P R E C A T E D ]
> **This project has been deprecated in favor of the [New Relic iOS/Android Cordova plugin](https://github.com/newrelic/newrelic-cordova-plugin).</br></br>**

</br></br>

## New Relic iOS SDK for Cordova and PhoneGap

The official New Relic iOS SDK plugin for Cordova and PhoneGap.

### Installation

- In your PhoneGap/Cordova project directory run this command:
```
cordova plugin add https://github.com/newrelic/newrelic-cordova-ios
```
- Open your project's top-level config.xml file and add this line with your New Relic token:
```
<preference name="NewRelicApplicationToken" value="<YOUR_TOKEN_HERE>" />
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
