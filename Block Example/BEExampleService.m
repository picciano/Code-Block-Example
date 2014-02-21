//
//  BEExampleService.m
//  Block Example
//
//  Created by Anthony Picciano on 2/21/14.
//  Copyright (c) 2014 Anthony Picciano. All rights reserved.
//

#import "BEExampleService.h"

@implementation BEExampleService

- (void)performActionWithHandler:(void (^)(NSString *, NSError *))handler
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    
    NSString *message = [dateFormatter stringFromDate:now];
    NSError *error = nil;
    
    if (NO)
    {
        // this will never happen
        error = [NSError errorWithDomain:@"impossible error" code:42 userInfo:nil];
    }
    
    if (handler)
    {
        handler(message, error);
    }
}

@end
