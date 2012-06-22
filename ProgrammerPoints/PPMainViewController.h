//
//  PPMainViewController.h
//  ProgrammerPoints
//
//  Created by wodom on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPMainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *smartTable;
@property (strong, nonatomic) IBOutlet UITableView *idiotTable;
@property (strong, nonatomic) IBOutlet UISegmentedControl *smartStupid;

@property (nonatomic, strong) NSArray *indicators;
@property (nonatomic, strong) NSArray *names;
@property (nonatomic, strong) NSArray *ranks;
@property (nonatomic, strong) NSArray *points;
//@property (nonatomic, strong) NSArray *idiots;

@property (nonatomic, strong) NSArray *names2;
@property (nonatomic, strong) NSArray *points2;
//@property (nonatomic, strong) NSArray *idiots2;

- (IBAction) smartStupidSwitched:(id)sender;

@end
