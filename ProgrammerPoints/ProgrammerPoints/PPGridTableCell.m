//
//  PPGridTableCell.m
//  ProgrammerPoints
//
//  Created by wodom on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PPGridTableCell.h"

#define cellHeight 44
#define indicatorWidth 35
#define cell1Width 121
#define cell2Width 50

@implementation PPGridTableCell

@synthesize lineColor; // for divider
@synthesize topCell;
@synthesize chosen;
@synthesize name;
@synthesize rank;
@synthesize points;

//
// Not drawing bottom line for some reason...
//
- (void)drawRect:(CGRect)rect //overloading drawRect to use the grid with lines
{
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetStrokeColorWithColor(context, lineColor.CGColor);       
    
	// CGContextSetLineWidth: The default line width is 1 unit. When stroked, the line straddles the path, with half of the total width on either side.
	// Therefore, a 1 pixel vertical line will not draw crisply unless it is offest by 0.5. This problem does not seem to affect horizontal lines.
	CGContextSetLineWidth(context, 1.0);
    
	// Add the vertical lines
    
    CGContextMoveToPoint(context, indicatorWidth+cell1Width+12+0.5, 0); //sets inital position (+12 is to account for layout padding)
	CGContextAddLineToPoint(context, indicatorWidth+cell1Width+12+0.5, rect.size.height); //draws line down from there
    
	CGContextMoveToPoint(context, indicatorWidth+cell1Width+cell2Width+20+0.5, 0); // sets second start point
	CGContextAddLineToPoint(context, indicatorWidth+cell1Width+cell2Width+20+0.5, rect.size.height); //draws another vertical line
    
    CGContextMoveToPoint(context, 279, 0); // sets final start point
	CGContextAddLineToPoint(context, 279, rect.size.height); //draws final vertical line
    
	// Add bottom line
	CGContextMoveToPoint(context, 0, rect.size.height);
	CGContextAddLineToPoint(context, rect.size.width, rect.size.height-0.5);
    
	// If this is the topmost cell in the table, draw the line on top
	if (topCell)
	{
		CGContextMoveToPoint(context, 0, 0);
		CGContextAddLineToPoint(context, rect.size.width, 0);
	}
    
	// Draw the lines
	CGContextStrokePath(context);
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        chosen = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, indicatorWidth, cellHeight)];
        chosen.backgroundColor = [UIColor clearColor]; // Important to set or lines will not appear
        [self addSubview:chosen];
        
        name = [[UILabel alloc] initWithFrame:CGRectMake(indicatorWidth, 0, cell1Width, cellHeight)];
        name.textAlignment = UITextAlignmentCenter;
        name.backgroundColor = [UIColor clearColor]; // Important to set or lines will not appear
        [self addSubview:name];
        
        rank = [[UILabel alloc] initWithFrame:CGRectMake(indicatorWidth+cell1Width, 0, cell2Width, cellHeight)];
        rank.textAlignment = UITextAlignmentCenter;
        rank.backgroundColor = [UIColor clearColor]; // Important to set or lines will not appear
        [self addSubview:rank];
        
        points = [[UILabel alloc] initWithFrame:CGRectMake(indicatorWidth+cell1Width+cell2Width, 0, cell2Width, cellHeight)];
        points.textAlignment = UITextAlignmentCenter;
        points.backgroundColor = [UIColor clearColor]; // Important to set or lines will not appear
        [self addSubview:points];
    }
    return self;
}

- (void)setTopCell:(BOOL)newTopCell
{
	topCell = newTopCell;
	[self setNeedsDisplay];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
