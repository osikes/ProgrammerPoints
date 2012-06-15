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

- getIdiotsNotify:(PPReceiving *) receiver;
- getIdiotWWithFirstName:(NSString *)firstName LastName:(NSString *)lastName Notify:(PPReceiving *) receiver;
- addIdiotWithFirstName:(NSString *)firstName LastName:(NSString *)lastName Notify:(PPReceiving *) receiver;
- removeIdiotWithID:(NSString *)idiotID Notify:(PPReceiving *) receiver;
- addStupidPoint:(PPPoint *) point ToIdiot:(NSString *) idiotID Notify:(PPReceiving *) receiver;
- addSmartPoint:(PPPoint *) point ToIdiot:(NSString *) idiotID Notify:(PPReceiving *) receiver;
- resetAllPointsNotify:(PPReceiving *) receiver;
- resetPointsFromID:(NSString *)idiotID Notify:(PPReceiving *) receiver;


@end