//
//  main.m
//  iOSHW1
//
//  Created by User on 2/10/14.
//  Copyright (c) 2014 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SiteValue.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
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
        
        
        NSLog(@"Initial Dictionary");
        //Enumerate through Dictionary
        for(id key in [SiteValue getDictionary]){
            const char *c = [key UTF8String]; //Convert NSString to String
            printf("Key: %s\t",c);
            [[[SiteValue getDictionary] objectForKey:key]print];
        }
        
        NSLog(@"Deleting...");
        //Delete nyu and gmail from dictionary
        [SiteValue deleteFromDictionary:@"nyu"];
        [SiteValue deleteFromDictionary:@"gmail"];
        
        NSLog(@"Reprinting dictionary...");
        //Reenumerate through Dictionary
        for(id key in [SiteValue getDictionary]){
            const char *c = [key UTF8String]; //Convert NSString to String
            printf("Key: %s\t",c);
            [[[SiteValue getDictionary] objectForKey:key]print];
        }
        
        NSLog(@"Incrementing...");
        //Increment through each entry in the Dictionary
        for(id key in [SiteValue getDictionary]){
            [[[SiteValue getDictionary] objectForKey:key]incCount];
        }
        
        NSLog(@"Reprinting dictionary...");
        //Reenumerate through Dictionary
        for(id key in [SiteValue getDictionary]){
            const char *c = [key UTF8String]; //Convert NSString to String
            printf("Key: %s\t",c);
            [[[SiteValue getDictionary] objectForKey:key]print];
        }
    return 0;
    }
}

