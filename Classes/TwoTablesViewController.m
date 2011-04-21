//
//  TwoTablesViewController.m
//  TwoTables
//
//  Created by chanju Jeon on 11. 4. 21..
//  Copyright 2011 MetaContents. All rights reserved.
//

#import "TwoTablesViewController.h"

@implementation TwoTablesViewController

@synthesize aTable;
@synthesize bTable;


#pragma mark -
#pragma mark View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	aList = [[NSArray alloc] initWithObjects:@"A", @"B", nil];
	bList = [[NSArray alloc] initWithObjects:@"a", @"b", @"c", nil];
}


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	NSInteger rows;
	
	if(tableView == aTable) rows = [aList count];
	if(tableView == bTable) rows = [bList count];
	
	return rows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *CellIdentifier = @"TwoTablesCell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if(cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
	}
	
	// Configure the cell...
	if(tableView == aTable)
		cell.textLabel.text = [aList objectAtIndex:indexPath.row];
	if(tableView == bTable)
		cell.textLabel.text = [bList objectAtIndex:indexPath.row];
	
	return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSString *__title, *__message;
	
	if(tableView == aTable) {
		__title = @"aTable";
		__message = [aList objectAtIndex:indexPath.row];
	}
	if(tableView == bTable) {
		__title = @"bTable";
		__message = [bList objectAtIndex:indexPath.row];
	}
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:__title message:__message delegate:nil cancelButtonTitle:@"확인" otherButtonTitles:nil];
	[alert show];
	[alert release];
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[aTable release];
	[bTable release];
    [super dealloc];
}

@end
