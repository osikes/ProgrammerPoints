//
//  PPReceiveDelegate.h
//  ProgrammerPoints
//
//  Created by Robert Smyly on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PPReceiveDelegate

- (void)didReceiveObject:(id)object FromRequest:(id) requestId;

@optional
- (void)didReveiveError:(id)error FromRequest:(id) requestId;

@end
