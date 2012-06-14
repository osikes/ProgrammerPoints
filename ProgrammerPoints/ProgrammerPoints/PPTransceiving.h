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
- (PPIdiot *)GetIdiotFirstName:(NSString *)firstName LastName:(NSString *)lastName;
- (BOOL)AddIdiotFirstName:(NSString *)firstName LastName:(NSString *)lastName;
- (BOOL)RemoveIdiotByID:(NSString *)idiotID;
- (BOOL)AddStupidPointID:(NSString *)idiotID Point:(PPPoint *) point;
- (BOOL)AddSmartPointID:(NSString *)idiotID Point:(PPPoint *) point;
- (BOOL)ResetPoints;
- (BOOL)ResetPointsID:(NSString *)idiotID;


@end