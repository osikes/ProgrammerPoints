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
    
    RKObjectMapping* collectionMapping = [RKObjectMapping mappingForClass:[PPCollection class]];
    [collectionMapping mapKeyPath:@"Id" toAttribute:@"id"];
    [collectionMapping mapKeyPath:@"total" toAttribute:@"total"];
    [collectionMapping mapKeyPath:@"points" toRelationship:@"points" withMapping:pointMapping];

    RKObjectMapping* idiotMapping = [RKObjectMapping mappingForClass:[PPIdiot class]];
    [idiotMapping mapKeyPath:@"Id" toAttribute:@"id"];
    [idiotMapping mapKeyPath:@"firstName" toAttribute:@"firstName"];
    [idiotMapping mapKeyPath:@"lastName" toAttribute:@"lastName"];
    [idiotMapping mapKeyPath:@"smartPoints" toRelationship:@"smartPoints" withMapping:collectionMapping];
    [idiotMapping mapKeyPath:@"stupidPoints" toRelationship:@"stupidPoints" withMapping:collectionMapping];
    [[RKObjectManager sharedManager].mappingProvider addObjectMapping:idiotMapping];
    
    
    
    RKObjectMapping* pointSerializationMapping = [RKObjectMapping mappingForClass:[NSMutableDictionary class]];
    [pointSerializationMapping mapKeyPath:@"Id" toAttribute:@"id"];
    [pointSerializationMapping mapKeyPath:@"date" toAttribute:@"date"];
    [pointSerializationMapping mapKeyPath:@"description" toAttribute:@"description"];
    [pointSerializationMapping mapKeyPath:@"value" toAttribute:@"value"];
    [[RKObjectManager sharedManager].mappingProvider setSerializationMapping:pointSerializationMapping forClass:[PPPoint class]];
    
    RKObjectMapping* collectionSerializationMapping = [RKObjectMapping mappingForClass:[NSMutableDictionary class]];
    [collectionSerializationMapping mapKeyPath:@"Id" toAttribute:@"id"];
    [collectionSerializationMapping mapKeyPath:@"total" toAttribute:@"total"];
    [collectionSerializationMapping mapKeyPath:@"points" toAttribute:@"points"];
    [[RKObjectManager sharedManager].mappingProvider setSerializationMapping:collectionSerializationMapping forClass:[PPCollection class]];
    
    RKObjectMapping* idiotSerializationMapping = [RKObjectMapping mappingForClass:[NSMutableDictionary class]];
    [idiotSerializationMapping mapKeyPath:@"Id" toAttribute:@"id"];
    [idiotSerializationMapping mapKeyPath:@"firstName" toAttribute:@"firstName"];
    [idiotSerializationMapping mapKeyPath:@"lastName" toAttribute:@"lastName"];
    [idiotSerializationMapping mapKeyPath:@"smartPoints" toAttribute:@"smartPoints"];
    [idiotSerializationMapping mapKeyPath:@"stupidPoints" toAttribute:@"stupidPoints"];
    [[RKObjectManager sharedManager].mappingProvider setSerializationMapping:idiotSerializationMapping forClass:[PPIdiot class]];
    
    [RKObjectManager sharedManager].serializationMIMEType = RKMIMETypeJSON;
    
    
    return self;
}

-(void)getIdiots {
    RKObjectMapping* idiotMapping = [[RKObjectManager sharedManager].mappingProvider objectMappingForClass:[PPIdiot class]];
    [[RKObjectManager sharedManager] loadObjectsAtResourcePath:@"/" objectMapping:idiotMapping delegate:self];
}

- (void)objectLoader:(RKObjectLoader*)objectLoader didLoadObjects:(NSArray*)objects {
    if ( [delegate respondsToSelector:@selector(didReceiveObject:FromRequest:)] ) { }
    [delegate didReceiveObject:objects FromRequest:nil];
}

//- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response { //callback after requests sent
//    
//    if ([request isGET]) { 
//        if ([response isOK]) { 
//            if ( [delegate respondsToSelector:@selector(didReceiveObject:FromRequest:)] ) { }
//        }
//    }
//    
//    else if ([request isPOST]) {
//        if ([response isJSON]) { }
//    }
//    
//    else if ([request isDELETE]) {
//        if ([response isNotFound]) { }
//    }
//    
//}

- (id)delegate {
    return delegate;
}

- (void) setDelegate:(id)newDelegate {
    delegate = newDelegate;
}

@end
