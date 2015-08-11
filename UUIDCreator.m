//
//  UUIDCreator.m
//  (c) Proxym-IT 
//
//  Created by Malek BelKahla on 10/08/2015.
//
//

#import "UUIDCreator.h"
#import "SFHFKeychainUtils.h"

#define KDeviceIdentifierKey @"DeviceIdentifierKey"

@implementation UUIDCreator



- (void) readUUID:(CDVInvokedUrlCommand*)command{
    NSString * cfuuidStr = @"";
    @try {
        cfuuidStr = [[NSUserDefaults standardUserDefaults] objectForKey:KDeviceIdentifierKey];
    }
    @catch (NSException *exception) {
        NSLog(@":::::UUIDCreator:::::Something went wrong! - Attempt to read the UUID was failed: %@", exception);
    }
    
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                 messageAsString:cfuuidStr];
    
    if (result) {
        [self.commandDelegate sendPluginResult:result
                                    callbackId:command.callbackId];
    }
    
}


- (void) writeUUID{
    @try {
        if ([[NSUserDefaults standardUserDefaults] objectForKey:KDeviceIdentifierKey] == nil) {
            NSString * cfuuidStr = [SFHFKeychainUtils getPasswordForUsername:@"CFUID" andServiceName:@"Choosit" error:nil];
            if (!cfuuidStr) {
                CFStringRef cfUuid = CFUUIDCreateString(NULL, CFUUIDCreate(NULL));
                cfuuidStr = (NSString *)cfUuid;
                [SFHFKeychainUtils storeUsername:@"CFUID" andPassword:cfuuidStr forServiceName:@"Choosit" updateExisting:NO error:nil];
            }
            [[NSUserDefaults standardUserDefaults] setObject:cfuuidStr forKey:KDeviceIdentifierKey];
            
        }
    }
    @catch (NSException *exception) {
        NSLog(@":::::UUIDCreator:::::Something went wrong! - Attempt to save the UUID was failed: %@", exception);
    }
    
}

@end
