//
//  PPMainViewController.m
//  ProgrammerPoints
//
//  Created by wodom on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PPMainViewController.h"
#import "PPGridTableCell.h"


@interface PPMainViewController ()

@end

@implementation PPMainViewController

@synthesize smartTable;
@synthesize idiotTable;
@synthesize smartStupid; // YES == smart points, NO == stupid points


@synthesize indicators;
@synthesize names;
@synthesize ranks;
@synthesize points;
//@synthesize idiots;

@synthesize names2;
@synthesize points2;
//@synthesize idiots2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.indicators = [[NSArray alloc] initWithObjects:
                       [UIImage imageNamed:@"tri.png"],
                       [UIImage imageNamed:@"dot.png"],
                        nil];
    self.names = [[NSArray alloc] initWithObjects:@"Owen", @"Greg", @"Sean", @"Weston", @"Robert", nil];
    self.ranks = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
    self.points = [[NSArray alloc] initWithObjects:@"9", @"8", @"7", @"6", @"5", nil];
    
    self.names2 = [[NSArray alloc] initWithObjects:@"Sean", @"Weston", @"Owen", @"Robert", @"Greg", nil];
    self.points2 = [[NSArray alloc] initWithObjects:@"91", @"68", @"37", @"16", @"5", nil];
    
    // Turn off the tableView's default lines because we are drawing them all ourself
    self.idiotTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    NSLog(@"numberOfSectionsInTableView");
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSLog(@"numberOfRowsInSection");
    return [self.names count];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"GridCell"; // make sure this is the same as in storyboard
    
    PPGridTableCell *cell = (PPGridTableCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[PPGridTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.lineColor = [UIColor whiteColor];
    }
    
    // Since we are drawing the lines ourself, we need to know which cell is the top cell in the table so that
    // we can draw the line on the top
    if (indexPath.row == 0)
        cell.topCell = YES;
    else
        cell.topCell = NO;
    
    /////////////////////////////////////////////////////////////////////////
    ////   TODO TODO TODO TODO TODO TODO TODO TODO TODO TODO TODO TODO   ////
    ////                                                                 ////
    //// Add an if statement based on the stupid/smart segmented control ////
    //// Set image and texts based on the control state                  ////
    /////////////////////////////////////////////////////////////////////////
    
    
    // Configure the cell.
    if (tableView == self.smartTable)
    {
        NSLog(@"cellForRowAtIndexPath1");
    cell.chosen.image = [indicators objectAtIndex:0];
    cell.name.text = [NSString stringWithFormat:@"%@", [self.names objectAtIndex: [indexPath row]]];
    cell.rank.text = [NSString stringWithFormat:@"%@", [self.ranks objectAtIndex: [indexPath row]]];
    cell.points.text = [NSString stringWithFormat:@"%@", [self.points objectAtIndex: [indexPath row]]];
    return cell;
    }
    else
    {
        NSLog(@"cellForRowAtIndexPath2");
        cell.chosen.image = [indicators objectAtIndex:1];
        cell.name.text = [NSString stringWithFormat:@"%@", [self.names2 objectAtIndex: [indexPath row]]];
        cell.rank.text = [NSString stringWithFormat:@"%@", [self.ranks objectAtIndex: [indexPath row]]];
        cell.points.text = [NSString stringWithFormat:@"%@", [self.points2 objectAtIndex: [indexPath row]]];
        return cell;
    }

}

- (IBAction) smartStupidSwitched:(id)sender
{
        if ([sender selectedSegmentIndex] == 0)
        {
            [smartTable setHidden:NO];
            [idiotTable setHidden:YES];
        }
        else
        {
            [smartTable setHidden:YES];
            [idiotTable setHidden:NO];
        }
    NSLog(@"reloadData");
}

@end
