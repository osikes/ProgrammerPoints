//
//  PPService.h
//  ProgrammerPoints
//
//  Created by wodom on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
#import "PPRequesting.h"

@interface PPService : NSObject <RKRequestDelegate, PPRequesting> {
    id delegate;
}

@property (strong, nonatomic) id delegate;

- (id)delegate;
- (void)setDelegate:(id)newDelegate;

@end
