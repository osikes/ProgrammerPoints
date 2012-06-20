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
@property (readonly) UIImageView* chosen;
@property (readonly) UILabel* name;
@property (readonly) UILabel* rank;
@property (readonly) UILabel* points;

@end
