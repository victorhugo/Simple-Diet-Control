//
//  MenuController.m
//  MyDailyThingsToDo
//
//  Created by Victor Hugo Pérez Alvarado on 4/9/13.
//  Copyright (c) 2013 Chilaquil. All rights reserved.
//

#import "MenuController.h"

@interface MenuController ()

@end

@implementation MenuController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.colors = @[@"#38ACC6", @"#A2FF88", @"#EFF391", @"#AC81D6", @"#CD446E"];
    
//    NSArray *menus = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"menu" ofType:@"plist"]];
//    
//    self.menudia1 = [[menus objectAtIndex:0] objectForKey:@"tiempos"];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.menudia1 count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    UILabel *titulo = (UILabel *)[cell viewWithTag:10];
    UILabel *contenido = (UILabel *)[cell viewWithTag:11];
    UILabel *hora = (UILabel *)[cell viewWithTag:12];
    UIView *background = [cell viewWithTag:44];

    titulo.text = [[[self.menudia1 objectAtIndex:indexPath.row] objectForKey:@"titulo"] uppercaseString];
    contenido.text = [[self.menudia1 objectAtIndex:indexPath.row] objectForKey:@"contenido"];
    hora.text = [[self.menudia1 objectAtIndex:indexPath.row] objectForKey:@"hora"];

//    background.backgroundColor = [self colorFromHexString:[self.colors objectAtIndex:indexPath.row]];
    
    return cell;
}

- (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *contenido = [[self.menudia1 objectAtIndex:indexPath.row] objectForKey:@"contenido"];
    CGSize size = [contenido sizeWithFont:[UIFont fontWithName:@"AvenirNext-Regular" size:16.0]];
    
    size = [contenido sizeWithFont:[UIFont fontWithName:@"AvenirNext-Regular" size:16.0] constrainedToSize:CGSizeMake(285.0, 500.0)];
    NSLog(@"Size: %f", size.height);
    return 70 + size.height;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

- (IBAction)swipeToBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
