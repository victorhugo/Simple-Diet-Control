//
//  PaginatorController.h
//  MyDailyThingsToDo
//
//  Created by Victor Hugo Pérez Alvarado on 4/10/13.
//  Copyright (c) 2013 Chilaquil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuController.h"

@interface PaginatorController : UIViewController<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scroll;
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *widhConst;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *contentViewBottomConstraint;

@property (nonatomic, strong) NSArray *menus;
@property (strong, nonatomic) IBOutlet UILabel *titulo;


@end
