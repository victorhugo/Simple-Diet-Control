//
//  PaginadorDinamicoController.h
//  MyDailyThingsToDo
//
//  Created by Victor Hugo Pérez Alvarado on 4/16/13.
//  Copyright (c) 2013 Chilaquil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuController.h"

@interface PaginadorDinamicoController : UIViewController<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scroll;

@property (nonatomic, strong) NSArray *menus;
@property (nonatomic, strong) NSMutableArray *menuControllers;
@property (strong, nonatomic) IBOutlet UILabel *titulo;

@end
