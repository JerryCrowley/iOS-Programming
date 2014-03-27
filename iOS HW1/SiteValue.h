//
//  SiteValue.h
//  iOSHW1
//
//  Created by User on 2/10/14.
//  Copyright (c) 2014 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

/*Create a global dictionary that can be accessed from within the SiteValue class*/
static NSMutableDictionary *login;

@interface SiteValue : NSObject
{
    int count;
}
@property NSString *username, *password;

+(SiteValue*) siteValueWithUsername: (NSString*) username
                        andPassword: (NSString*) password
                           andCount: (int) count;
-(SiteValue*) initWithUsername: (NSString*) username
                   andPassword: (NSString*) password
                      andCount: (int) count;
-(void) print;
-(void) setCount: (int) num;
-(int)  getCount;
+(id) getDictionary;
-(BOOL) addToDictionary: (NSString *) website withSiteValue: (SiteValue *) value;
+(BOOL) deleteFromDictionary: (NSString *) website;
-(void) incCount;



@end
