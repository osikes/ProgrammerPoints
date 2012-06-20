//
//  PPGridTableCell.h
//  ProgrammerPoints
//
//  Created by wodom on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPGridTableCell : UITableViewCell
{
    UIColor *lineColor; // for divider
	BOOL topCell;
	UIImageView *chosen;
	UILabel *name;
	UILabel *rank;
    UILabel *points;
}

@property (nonatomic, strong) UIColor* lineColor;
@property (nonatomic) BOOL topCell;
@property (readonly) IBOutlet UIImageView* chosen;
@property (readonly) IBOutlet UILabel* name;
@property (readonly) IBOutlet UILabel* rank;
@property (readonly) IBOutlet UILabel* points;

@end
