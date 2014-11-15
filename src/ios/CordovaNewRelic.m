//  New Relic for Mobile -- iOS edition
//
//  See:
//    https://docs.newrelic.com/docs/mobile-apps for information
//    https://docs.newrelic.com/docs/releases/ios for release notes
//
//  Copyright (c) 2014 New Relic. All rights reserved.
//  See https://docs.newrelic.com/docs/licenses/ios-agent-licenses for license details
//

#import "CordovaNewRelic.h"

@implementation CordovaNewRelic

- (void)pluginInitialize
{
    NSString* applicationToken = [self.commandDelegate.settings objectForKey:[@"NewRelicApplicationToken" lowercaseString]];
    [NewRelic disableFeatures:NRFeatureFlag_InteractionTracing];
    [NewRelicAgent startWithApplicationToken:applicationToken];
}

@end
