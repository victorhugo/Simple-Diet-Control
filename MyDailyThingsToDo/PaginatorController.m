//
//  PaginatorController.m
//  MyDailyThingsToDo
//
//  Created by Victor Hugo Pérez Alvarado on 4/10/13.
//  Copyright (c) 2013 Chilaquil. All rights reserved.
//

#import "PaginatorController.h"

@interface PaginatorController ()

@end

@implementation PaginatorController{
    BOOL finishedLayout;

}

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
//    self.sc.contentViewBottomConstraint.constant = 0;

}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    self.menus = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"menu" ofType:@"plist"]];

    
    MenuController * menu = segue.destinationViewController;
    if([segue.identifier isEqualToString:@"menu1"]){
        NSLog(@"T: %@", [[self.menus objectAtIndex:0] objectForKey:@"tiempos"]);
        menu.menudia1 = [[self.menus objectAtIndex:0] objectForKey:@"tiempos"];
    }else if([segue.identifier isEqualToString:@"menu2"]){
        menu.menudia1 = [[self.menus objectAtIndex:1] objectForKey:@"tiempos"];
    }else if([segue.identifier isEqualToString:@"menu3"]){
        menu.menudia1 = [[self.menus objectAtIndex:2] objectForKey:@"tiempos"];
    }
}



- (float)physicalPageIndex {
    float page = self.scroll.contentOffset.x / 220.0;
    return page;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    int physicalIndex = floor([self physicalPageIndex]);
    
    switch (physicalIndex) {
        case 0:
            self.titulo.text = @"MENU 1";
            break;
        case 1:
            self.titulo.text = @"MENU 2";
            break;
        case 2:
            self.titulo.text = @"MENU 3";
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
