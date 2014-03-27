//
//  ViewController.m
//  iOSHW2.1
//
//  Created by User on 3/3/14.
//  Copyright (c) 2014 Jerry. All rights reserved.
//

#import "ViewController.h"
#import "addValueView.h"
#import "SiteValue.h" 

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *websiteText;
@property (weak, nonatomic) IBOutlet UITextField *usernameText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
@property (weak, nonatomic) IBOutlet UITextField *countText;
@property (nonatomic) int countLabel;
@property (nonatomic) int locationNum;
@property (nonatomic) int numObjects;

- (IBAction)backToViewControllerOne:(UIStoryboardSegue *)segue; 
@end

@implementation ViewController

-(void) viewDidLoad{
    self.numObjects = 5;
    self.locationNum = -1;
    [SiteValue checkIfArrayCreated];
}


- (IBAction)backToViewControllerOne:(UIStoryboardSegue *)segue
{
}

-(void) setCountLabel:(int)countLabel{
    _countLabel = countLabel;
    self.countText.text = [NSString stringWithFormat:@"%d",_countLabel];
}
- (IBAction)addValuePressed:(id)sender {
    _numObjects++;
}
- (IBAction)backwardButton:(id)sender {
    if(self.locationNum > 0){
        self.locationNum--;
    
        SiteValue *currentSiteValue;
    
        currentSiteValue = [SiteValue getSiteValueAtIndex: _locationNum];
    
        self.websiteText.text   = [NSString stringWithFormat:@"%@",currentSiteValue.website];
        self.usernameText.text = [NSString stringWithFormat:@"%@",currentSiteValue.username];
        self.passwordText.text = [NSString stringWithFormat:@"%@",currentSiteValue.password];
        self.countText.text = [NSString stringWithFormat:@"%d",[currentSiteValue getCount]];
    }
}
- (IBAction)forwardButton:(id)sender {
    if(_locationNum < _numObjects-1){
        self.locationNum++;
    
        SiteValue *currentSiteValue;
    
        currentSiteValue = [SiteValue getSiteValueAtIndex: _locationNum];

        self.websiteText.text   = [NSString stringWithFormat:@"%@",currentSiteValue.website];
        self.usernameText.text = [NSString stringWithFormat:@"%@",currentSiteValue.username];
        self.passwordText.text = [NSString stringWithFormat:@"%@",currentSiteValue.password];
        self.countText.text = [NSString stringWithFormat:@"%d",[currentSiteValue getCount]];
    }
    
}
- (IBAction)incCountButton:(UIButton *)sender {
    if(_locationNum >= 0){
    
        SiteValue *currentSiteValue;
    
        currentSiteValue = [SiteValue getSiteValueAtIndex: _locationNum];
    
        [currentSiteValue incCount];
    
        [currentSiteValue setCount: [currentSiteValue getCount]];
    
        self.countText.text = [NSString stringWithFormat:@"%d",[currentSiteValue getCount]];
    }
}


@end
