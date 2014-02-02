//
//  PaginadorDinamicoController.m
//  MyDailyThingsToDo
//
//  Created by Victor Hugo Pérez Alvarado on 4/16/13.
//  Copyright (c) 2013 Chilaquil. All rights reserved.
//

#import "PaginadorDinamicoController.h"

@interface PaginadorDinamicoController ()

@end

@implementation PaginadorDinamicoController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.menus = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"menu2" ofType:@"plist"]];
    self.menuControllers = [NSMutableArray array];
    
    self.scroll.contentSize = CGSizeMake( 320.0 * [self.menus count], 508.0);
    int x = 0.0;
    for(NSDictionary *menuData in self.menus){
        MenuController *menu = [self.storyboard instantiateViewControllerWithIdentifier:@"mainMenuTableView"];
        [self.menuControllers addObject:menu];
        menu.menudia1 = [menuData objectForKey:@"tiempos"];
        menu.view.frame = CGRectMake(x * 320.0, 0.0, 0.0, 0.0);
        x++;
        [self.scroll addSubview:menu.view];
    }
}

- (float)physicalPageIndex {
    float page = self.scroll.contentOffset.x / 300.0;
    return page;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    int physicalIndex = floor([self physicalPageIndex]);
    
    self.titulo.text = [[[self.menus objectAtIndex:physicalIndex] objectForKey:@"nombre"] uppercaseString];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
