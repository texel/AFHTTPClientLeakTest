//
//  AppDelegate.m
//  AFHTTPClientLeakTest
//
//  Created by Leigh Caplan on 1/5/15.
//  Copyright (c) 2015 Onehub. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}

@end
