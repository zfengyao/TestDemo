//
//  TestPlugin.m
//  HelloCordova
//
//  Created by ZD on 2016/10/27.
//
//

#import "TestPlugin.h"

@implementation TestPlugin

- (void)jsActionTestMethod:(CDVInvokedUrlCommand *)command{
    NSLog(@"Hello World!!  Hello Cordova!");
    [self performSelectorInBackground:@selector(showAlertView) withObject:nil];
}

- (void)showAlertView{
    UIAlertView *alertV = [[UIAlertView alloc]initWithTitle:@"温馨提示" message:@"Welcome to ionic!" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alertV show];
}

#pragma -mark -UIAlertDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (1 == buttonIndex) {
        [alertView dismissWithClickedButtonIndex:buttonIndex animated:YES];
    }
}

@end
