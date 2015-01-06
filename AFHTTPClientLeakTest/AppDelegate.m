//
//  AppDelegate.m
//  AFHTTPClientLeakTest
//
//  Created by Leigh Caplan on 1/5/15.
//  Copyright (c) 2015 Onehub. All rights reserved.
//

#import "AppDelegate.h"
#import "AFNetworking.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // Insert code here to initialize your application
  [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(doRequest) userInfo:nil repeats:YES];
}

- (void)doRequest
{
  AFHTTPClient *client = [AFHTTPClient clientWithBaseURL:[NSURL URLWithString:@"http://localhost:3000"]];
  
  [client getPath:@"" parameters:@{}
          success:^(AFHTTPRequestOperation *operation, id responseObject) {
            NSLog(@"Success!");
          }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
           NSLog(@"Failure.");
   }];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}

@end
