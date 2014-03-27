//
//  SiteValue.m
//  iOSHW1
//
//  Created by User on 2/10/14.
//  Copyright (c) 2014 Jerry. All rights reserved.
//

#import "SiteValue.h"

@implementation SiteValue
@synthesize username,password,website;


+(BOOL) createInititalArray{
    [SiteValue addToArray:[SiteValue siteValueWithUsername:@"Frankenstein"
                                                andWebsite:@"Gmail"
                                               andPassword:@"greenaboutyou"
                                                  andCount:12]];
    [SiteValue addToArray:[SiteValue siteValueWithUsername:@"Dracula"
                                                andWebsite:@"Yahoo"
                                               andPassword:@"biteoutatheapple"
                                                  andCount:14]];
    [SiteValue addToArray:[SiteValue siteValueWithUsername:@"Wazowski"
                                                andWebsite:@"NYU"
                                               andPassword:@"Sulley1549"
                                                  andCount:89]];
    [SiteValue addToArray:[SiteValue siteValueWithUsername:@"Kate Monster"
                                                andWebsite:@"Amazon"
                                               andPassword:@"Monstersorri"
                                                  andCount:14]];
    [SiteValue addToArray:[SiteValue siteValueWithUsername:@"Chocula"
                                                andWebsite:@"AOL"
                                               andPassword:@"bad!!teeth"
                                                  andCount:0]];
    
    return YES;
}
+(BOOL) checkIfArrayCreated{
    if(!login){
        [SiteValue getArray];
    }

    return YES;
}
+(SiteValue*) siteValueWithUsername: (NSString*) username
                         andWebsite: (NSString*) website
                        andPassword: (NSString*) password
                           andCount: (int) count;
{
    SiteValue *newValue = [[SiteValue alloc] initWithUsername:username andWebsite:website andPassword:password andCount:count];
    return newValue;
    
}
-(SiteValue*) initWithUsername: (NSString*) name
                    andWebsite: (NSString*) site
                   andPassword: (NSString*) pass
                      andCount: (int) num;
{
    self = [super init];
    
    if ( self ) {
        [self setCount: num];
        self.username = name;
        self.password = pass;
        self.website = site;
    }
    
    return self;
}
-(void) setCount: (int) num;
{
    count = num;
}
-(int) getCount;
{
    return count;
}
+(NSMutableArray *) getArray;
{
    if (!login) {
        login = [[NSMutableArray alloc] init];
        [SiteValue createInititalArray];
    }
    
    return login;
}
+(SiteValue*) getSiteValueAtIndex: (int) index;
{
    return [[SiteValue getArray]objectAtIndex:index];
}
+(BOOL) addToArray: (SiteValue *)value;
{
    NSMutableArray *_login;
    
    _login = [SiteValue getArray];
    
    [_login addObject:value];
    
    return YES;
}

-(void) incCount;
{
    count++;
}

@end
