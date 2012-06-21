//
//  PPMainViewController.h
//  ProgrammerPoints
//
//  Created by wodom on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPMainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *idiotTable;

//@property (nonatomic, strong) NSArray *indicators;
@property (nonatomic, strong) NSArray *names;
@property (nonatomic, strong) NSArray *ranks;
@property (nonatomic, strong) NSArray *points;
@property (nonatomic, strong) NSArray *idiots;

@end
