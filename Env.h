/********* Env.h Cordova Plugin Header *******/

#import <Cordova/CDV.h>

@interface Env : CDVPlugin

- (void)envDetected:(CDVInvokedUrlCommand*)command;

@end