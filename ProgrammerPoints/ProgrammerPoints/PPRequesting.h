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
#import "PPReceiveDelegate.h"

@protocol PPRequesting

- (void)getIdiots;
- (void)getIdiotWWithFirstName:(NSString *)firstName LastName:(NSString *)lastName;
- (void)addIdiotWithFirstName:(NSString *)firstName LastName:(NSString *)lastName;
- (void)removeIdiotWithID:(NSString *)idiotID;
- (void)addStupidPoint:(PPPoint *) point ToIdiot:(NSString *) idiotID;
- (void)addSmartPoint:(PPPoint *) point ToIdiot:(NSString *) idiotID;
- (void)resetAllPoints;
- (void)resetPointsFromID:(NSString *)idiotID;

@end
