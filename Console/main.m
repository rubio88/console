//
//  main.m
//  Console
//
//  Created by Администратор on 8/26/13.
//  Copyright (c) 2013 Администратор. All rights reserved.
//
@interface Logger : NSObject

-(void) sayOuch:(NSTimer *)t;

@end

@implementation Logger

-(void) sayOuch:(NSTimer *)t {
    NSLog(@"Ouch");
}

@end
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Logger *logger = [[Logger  alloc] init];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval: 2.0
                                                          target:logger
                                                        selector:@selector(sayOuch:)
                                                        userInfo:nil
                                                         repeats:YES];
        [[NSRunLoop currentRunLoop] run];
        
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

