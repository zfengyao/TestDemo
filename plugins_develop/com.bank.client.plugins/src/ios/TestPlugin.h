//
//  TestPlugin.h
//  HelloCordova
//
//  Created by ZD on 2016/10/27.
//
//

#import <Cordova/CDV.h>

@interface TestPlugin : CDVPlugin


/**
 jsAction

 @param command js 传参
 */
- (void)jsActionTestMethod:(CDVInvokedUrlCommand *)command;

@end
