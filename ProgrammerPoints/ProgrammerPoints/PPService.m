//
//  PPService.m
//  ProgrammerPoints
//
//  Created by wodom on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PPService.h"
#import <RestKit/RestKit.h>

@implementation PPService

- (id) initWithBaseURL:(NSString *) baseURL {
    self = [super init];
    if (self != nil) {
        RKClient* client = [RKClient clientWithBaseURL:baseURL]; //initialize RKClient with base url
    }
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
