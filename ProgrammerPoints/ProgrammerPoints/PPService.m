//
//  PPService.m
//  ProgrammerPoints
//
//  Created by wodom on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PPService.h"
#import <RestKit/RestKit.h>

#import "PPPoint.h"
#import "PPCollection.h"
#import "PPIdiot.h"

@implementation PPService

- (id) initWithBaseURL:(NSString *) baseURL {
    self = [super init];
    if (self != nil) {
        RKClient* client = [RKClient clientWithBaseURL:baseURL]; //initialize RKClient with base url
    }
    
    RKObjectMapping* pointMapping = [RKObjectMapping mappingForClass:[PPPoint class]];
    [pointMapping mapKeyPath:@"Id" toAttribute:@"id"];
    [pointMapping mapKeyPath:@"date" toAttribute:@"date"];
    [pointMapping mapKeyPath:@"description" toAttribute:@"description"];
    [pointMapping mapKeyPath:@"value" toAttribute:@"value"];
    //[[RKObjectManager sharedManager].mappingProvider setMapping:pointMapping forKeyPath:@"points"];
    
    RKObjectMapping* collectionMapping = [RKObjectMapping mappingForClass:[PPCollection class]];
    [collectionMapping mapKeyPath:@"Id" toAttribute:@"id"];
    [collectionMapping mapKeyPath:@"total" toAttribute:@"total"];
    [collectionMapping mapKeyPath:@"points" toAttribute:@"points"];
    [[RKObjectManager sharedManager].mappingProvider setMapping:collectionMapping forKeyPath:@"smartPoints"];
    [[RKObjectManager sharedManager].mappingProvider setMapping:collectionMapping forKeyPath:@"stupidPoints"];
    
    RKObjectMapping* idiotMapping = [RKObjectMapping mappingForClass:[PPIdiot class]];
    [idiotMapping mapKeyPath:@"Id" toAttribute:@"id"];
    [idiotMapping mapKeyPath:@"firstName" toAttribute:@"firstName"];
    [idiotMapping mapKeyPath:@"lastName" toAttribute:@"lastName"];
    [idiotMapping mapKeyPath:@"smartPoints" toAttribute:@"smartPoints"];
    [idiotMapping mapKeyPath:@"stupidPoints" toAttribute:@"stupidPoints"];
    
    return self;
}

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response { //callback after requests sent
    
    if ([request isGET]) { 
        if ([response isOK]) {  }
    }
    
    else if ([request isPOST]) {
        if ([response isJSON]) { }
    }
    
    else if ([request isDELETE]) {
        if ([response isNotFound]) { }
    }
    
}

@end
