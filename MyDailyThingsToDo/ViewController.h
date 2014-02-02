//
//  ViewController.h
//  MyDailyThingsToDo
//
//  Created by Victor Hugo Pérez Alvarado on 4/9/13.
//  Copyright (c) 2013 Chilaquil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuController.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIScrollView *scrollPaginas;

@property (nonatomic, strong) NSArray *menus;

@end
