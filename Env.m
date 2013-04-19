/********* Env.h Cordova Plugin Implementation *******/

#import "Env.h"
#import <Cordova/CDV.h>

@implementation Env

- (void)envDetected:(CDVInvokedUrlCommand*)command
{
    NSLog(@"in backend plugin processing");
    NSString* envDetected;

    #if appenv == 1
        envDetected = @"Debug";
    #else
        envDetected = @"Release";
    #endif
    
    NSLog(@"****detected env to be***** %@", envDetected);
    
    CDVPluginResult* pluginResult = nil;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:envDetected];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end