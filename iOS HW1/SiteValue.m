//
//  SiteValue.m
//  iOSHW1
//
//  Created by User on 2/10/14.
//  Copyright (c) 2014 Jerry. All rights reserved.
//

#import "SiteValue.h"

@implementation SiteValue
@synthesize username,password;


+(SiteValue*) siteValueWithUsername: (NSString*) username
                        andPassword: (NSString*) password
                           andCount: (int) count;
{
    SiteValue *newValue = [[SiteValue alloc] initWithUsername:username andPassword:password andCount:count];
    return newValue;
   
}
-(SiteValue*) initWithUsername: (NSString*) name
                   andPassword: (NSString*) pass
                      andCount: (int) num;
{
    self = [super init];
    
    if ( self ) {
        [self setCount: num];
        self.username = name;
        self.password = pass;
    }
    
    return self;
}

-(void) print;
{
    const char *name = [username UTF8String];
    const char *pass = [password UTF8String];
    printf("Username: %s\t Password: %s\t Count: %i\n",name,pass,count);
}
-(void) setCount: (int) num;
{
    count = num;
}
-(int) getCount;
{
    return count;
}
+(NSMutableDictionary*) getDictionary;
{
    if (!login) {
        login = [[NSMutableDictionary alloc] init];
    }
    
    return login; 
}
-(BOOL) addToDictionary: (NSString *) website withSiteValue:(SiteValue *)value;
{
    NSMutableDictionary *_login;
    
    _login = [SiteValue getDictionary];

    if([_login objectForKey:website] == nil)
    {
        [_login setObject:value forKey:website];
        return YES;
    }
    
    else{
        NSLog(@"Error. Key already in dictionary. Not added");
        return NO;
    }
}
+(BOOL) deleteFromDictionary: (NSString *) website;
{
    if([login objectForKey:website] == nil)
    {
        NSLog(@"Error. Key not in dictionary.");
        return NO;
    }
    else{
        [login removeObjectForKey:website];
        return YES;
    }
}
-(void) incCount;
{
    count++;
}

@end
