//
//  BEExampleService.h
//  Block Example
//
//  Created by Anthony Picciano on 2/21/14.
//  Copyright (c) 2014 Anthony Picciano. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BEExampleService : NSObject

- (void)performActionWithHandler:(void (^)(NSString *, NSError *))handler;

@end
