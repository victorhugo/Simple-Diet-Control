//
//  MenuController.h
//  MyDailyThingsToDo
//
//  Created by Victor Hugo Pérez Alvarado on 4/9/13.
//  Copyright (c) 2013 Chilaquil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuController : UITableViewController

@property (nonatomic, strong) NSArray *colors;
@property (nonatomic, strong) NSArray *menudia1;
- (IBAction)swipeToBack:(id)sender;

@end
