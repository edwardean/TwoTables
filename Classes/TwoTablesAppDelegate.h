//
//  TwoTablesAppDelegate.h
//  TwoTables
//
//  Created by chanju Jeon on 11. 4. 21..
//  Copyright 2011 MetaContents. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TwoTablesViewController;

@interface TwoTablesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TwoTablesViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TwoTablesViewController *viewController;

@end

