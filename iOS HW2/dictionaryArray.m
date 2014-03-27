//
//  dictionaryArray.m
//  iOSHW2.1
//
//  Created by User on 3/7/14.
//  Copyright (c) 2014 Jerry. All rights reserved.
//

#import "dictionaryArray.h"
#import "SiteValue.h"

@implementation dictionaryArray


//Allocate and Initialize SiteValue variables
SiteValue *gmail,*nyu,*yahoo,*amazon,*aol;

gmail  = [SiteValue siteValueWithUsername:@"Franken"
                              andPassword:@"green"
                                 andCount:12];
nyu    = [SiteValue siteValueWithUsername:@"Dracula"
                              andPassword:@"apple"
                                 andCount:14];
yahoo  = [SiteValue siteValueWithUsername:@"Wazowski"
                              andPassword:@"Sulley "
                                 andCount:89];
amazon = [SiteValue siteValueWithUsername:@"Monster"
                              andPassword:@"sorri"
                                 andCount:14];
aol    = [SiteValue siteValueWithUsername:@"Chocula"
                              andPassword:@"teeth"
                                 andCount:0];

//Add each SiteValue to Dictionary
[gmail addToDictionary:@"gmail" withSiteValue:gmail];
[yahoo addToDictionary:@"yahoo" withSiteValue:yahoo];
[nyu addToDictionary:@"nyu" withSiteValue:nyu];
[amazon addToDictionary:@"amazon" withSiteValue:amazon];
[aol addToDictionary:@"aol" withSiteValue:aol];
    
@end
