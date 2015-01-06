//
//  AppDelegate.h
//  AFHTTPClientLeakTest
//
//  Created by Leigh Caplan on 1/5/15.
//  Copyright (c) 2015 Onehub. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class AFHTTPRequestOperationManager;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property AFHTTPRequestOperationManager *client;

- (void)doRequest;

@end

