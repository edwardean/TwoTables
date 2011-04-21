//
//  TwoTablesViewController.h
//  TwoTables
//
//  Created by chanju Jeon on 11. 4. 21..
//  Copyright 2011 MetaContents. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwoTablesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
	NSArray *aList;
	NSArray *bList;
	UITableView *aTable;
	UITableView *bTable;
}

@property (nonatomic, retain) IBOutlet UITableView *aTable;
@property (nonatomic, retain) IBOutlet UITableView *bTable;

@end

