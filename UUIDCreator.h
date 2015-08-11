//
//  UUIDCreator.h
//  (c) Proxym-IT 
//
//  Created by Malek BelKahla on 10/08/2015.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface UUIDCreator : CDVPlugin

// read the UUID from keychain or UserDefaults
- (void) readUUID:(CDVInvokedUrlCommand*)command;
// write the UUID to keychain and UserDefaults
- (void) writeUUID;

@end
