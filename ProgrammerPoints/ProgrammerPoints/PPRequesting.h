//
//  PPTransceiving.h
//  ProgrammerPoints
//
//  Created by wodom on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PPIdiot.h"
#import "PPPoint.h"
#import "PPReceiving.h"

@protocol PPRequesting <NSObject>

- (void)getIdiotsNotify:(PPReceiving *) receiver;
- (void)getIdiotWWithFirstName:(NSString *)firstName LastName:(NSString *)lastName Notify:(PPReceiving *) receiver;
- (void)addIdiotWithFirstName:(NSString *)firstName LastName:(NSString *)lastName Notify:(PPReceiving *) receiver;
- (void)removeIdiotWithID:(NSString *)idiotID Notify:(PPReceiving *) receiver;
- (void)addStupidPoint:(PPPoint *) point ToIdiot:(NSString *) idiotID Notify:(PPReceiving *) receiver;
- (void)addSmartPoint:(PPPoint *) point ToIdiot:(NSString *) idiotID Notify:(PPReceiving *) receiver;
- (void)resetAllPointsNotify:(PPReceiving *) receiver;
- (void)resetPointsFromID:(NSString *)idiotID Notify:(PPReceiving *) receiver;

@end
