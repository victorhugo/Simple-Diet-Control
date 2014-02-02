//
//  ViewController.m
//  MyDailyThingsToDo
//
//  Created by Victor Hugo Pérez Alvarado on 4/9/13.
//  Copyright (c) 2013 Chilaquil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    self.scrollPaginas.translatesAutoresizingMaskIntoConstraints = NO;
//    self.scrollPaginas.contentSize = CGSizeMake(640.0, self.view.frame.size.height);
    
    
    self.menus = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"menu1.2" ofType:@"plist"]];
    
//    self.menudia1 = [[menus objectAtIndex:0] objectForKey:@"tiempos"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    MenuController * menu = segue.destinationViewController;
    if([segue.identifier isEqualToString:@"menu1"]){
        menu.menudia1 = [[self.menus objectAtIndex:0] objectForKey:@"tiempos"];
    }else if([segue.identifier isEqualToString:@"menu2"]){
        menu.menudia1 = [[self.menus objectAtIndex:1] objectForKey:@"tiempos"];
    }else if([segue.identifier isEqualToString:@"menu3"]){
        menu.menudia1 = [[self.menus objectAtIndex:2] objectForKey:@"tiempos"];
    }
}

@end
