//
//  BEViewController.m
//  Block Example
//
//  Created by Anthony Picciano on 2/21/14.
//  Copyright (c) 2014 Anthony Picciano. All rights reserved.
//

#import "BEViewController.h"
#import "BEExampleService.h"

@interface BEViewController ()

@property (weak) IBOutlet UITextField *dateTextField;

@end

@implementation BEViewController

- (IBAction)clickButton:(id)sender
{
    BEExampleService *service = [[BEExampleService alloc] init];
    
    [service performActionWithHandler:^(NSString *message, NSError *error)
    {
        if (error)
        {
            NSLog(@"Error is clickButton: %@", error.description);
        }
        else
        {
            [self.dateTextField setText:message];
        }
    }];
}

@end
