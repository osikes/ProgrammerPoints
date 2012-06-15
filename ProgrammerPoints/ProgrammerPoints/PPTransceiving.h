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

@protocol PPTransceiving <NSObject>

- (NSMutableArray *)GetIdiots;
- (PPIdiot *)GetIdiotWWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;
- (BOOL)AddIdiotWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;
- (BOOL)RemoveIdiotWithID:(NSString *)idiotID;
- (BOOL)AddStupidPoint:(PPPoint *) point toIdiot:(NSString *) idiotID;
- (BOOL)AddSmartPoint:(PPPoint *) point toIdiot:(NSString *) idiotID;
- (BOOL)ResetAllPoints;
- (BOOL)ResetPointsFromID:(NSString *)idiotID;


@end