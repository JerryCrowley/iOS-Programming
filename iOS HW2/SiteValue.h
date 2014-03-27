//
//  SiteValue.h
//  iOSHW1
//
//  Created by User on 2/10/14.
//  Copyright (c) 2014 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

/*Create a global dictionary that can be accessed from within the SiteValue class*/
static NSMutableArray *login;

@interface SiteValue : NSObject
{
    int count;
}
@property NSString *username, *password, *website;

+(BOOL) createInititalArray;
+(BOOL) checkIfArrayCreated;
+(SiteValue*) siteValueWithUsername: (NSString*) username
                        andWebsite: (NSString*) website
                        andPassword: (NSString*) password
                           andCount: (int) count;
-(SiteValue*) initWithUsername: (NSString*) username
                    andWebsite: (NSString*) site
                   andPassword: (NSString*) password
                      andCount: (int) count;
-(void) setCount: (int) num;
-(int)  getCount;
+(SiteValue*) getSiteValueAtIndex: (int) index;
+(id) getArray;
+(BOOL) addToArray: (SiteValue *) value;
-(void) incCount;



@end
