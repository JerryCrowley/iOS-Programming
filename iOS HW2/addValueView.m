//
//  addValueView.m
//  iOSHW2.1
//
//  Created by User on 3/7/14.
//  Copyright (c) 2014 Jerry. All rights reserved.
//

#import "addValueView.h"
#import "ViewController.h"
#import "SiteValue.h"
@interface addValueView ()
@property (weak, nonatomic) IBOutlet UITextField *webValue;
@property (weak, nonatomic) IBOutlet UITextField *userValue;
@property (weak, nonatomic) IBOutlet UITextField *passValue;
@property (weak, nonatomic) IBOutlet UITextField *countValue;

@end

@implementation addValueView


- (IBAction)addEntryButtonPressed:(id)sender {
    [SiteValue addToArray:[SiteValue siteValueWithUsername:self.userValue.text andWebsite:self.webValue.text andPassword:self.passValue.text andCount:[self.countValue.text intValue]]];
}


-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [_webValue resignFirstResponder];
    [self.nextResponder touchesEnded:touches withEvent:event];
    [_userValue resignFirstResponder];
    [self.nextResponder touchesEnded:touches withEvent:event];
    [_passValue resignFirstResponder];
    [self.nextResponder touchesEnded:touches withEvent:event];
    [_countValue resignFirstResponder];
    [self.nextResponder touchesEnded:touches withEvent:event];
}

@end
