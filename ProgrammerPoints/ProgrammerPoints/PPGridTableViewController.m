//
//  PPGridTableViewController.m
//  ProgrammerPoints
//
//  Created by wodom on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PPGridTableViewController.h"
#import "PPGridTableCell.h"

@interface PPGridTableViewController ()

@end

@implementation PPGridTableViewController

//@synthesize indicators = _indicators;
@synthesize names = _names;
@synthesize ranks = _ranks;
@synthesize points = _points;
@synthesize idiots = _idiots;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
//    self.indicators = [[NSArray alloc] initWithObjects:
//                       [UIImage imageNamed:@"tri.png"],
//                       [UIImage imageNamed:@"dot.png"],
//                       nil];
    self.names = [[NSArray alloc] initWithObjects:@"Owen", @"Greg", @"Sean", @"Weston", @"Robert", nil];
    self.ranks = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", nil];
    self.points = [[NSArray alloc] initWithObjects:@"9", @"8", @"7", @"6", @"5", nil];

    // Turn off the tableView's default lines because we are drawing them all ourself
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    return (interfaceOrientation == UIInterfaceOrientationPortrait);
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.names count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell"; // make sure this is the same as in storyboard
    
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
    //// TODO TODO TODO TODO TODO TODO TODO TODO TODO TODO TODO TODO     ////
    ////                                                                 ////
    //// Add an if statement based on the stupid/smart segmented control ////
    //// Set image and texts based on the control state                  ////
    /////////////////////////////////////////////////////////////////////////

    
    // Configure the cell. //currently only shows one option, just to get it working.
    cell.chosen.image = [UIImage imageNamed:@"tri.png"];
    cell.name.text = [NSString stringWithFormat:@"%@", [self.names objectAtIndex:0]];
    cell.rank.text = [NSString stringWithFormat:@"%@", [self.ranks objectAtIndex:0]];
    cell.points.text = [NSString stringWithFormat:@"%@", [self.points objectAtIndex:0]];    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
