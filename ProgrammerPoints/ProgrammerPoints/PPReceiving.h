//
//  PPReceiving.h
//  ProgrammerPoints
//
//  Created by Robert Smyly on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PPReceiving <NSObject>

- didReceiveObject:(id)object RequestId:(id) requestId;
- didReveiveError:(id)error RequestId:(id) requestId;

@end
