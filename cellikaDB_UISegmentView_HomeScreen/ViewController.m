//
//  ViewController.m
//  cellikaDB_UISegmentView_HomeScreen
//
//  Created by user148840 on 2/25/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    lbl_Forms = [NSMutableArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich",@"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];

    lbl_Profiles = [NSMutableArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich",@"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
//    
//    img_Profiles = [NSMutableArray arrayWithObjects:@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png",@"b.png", nil];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView.tag==0)
    {
        
       return [lbl_Forms count];
    }
    
    else
        return [lbl_Profiles count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
   
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    if(tableView.tag==0)
    {
    
       cell.textLabel.text = [lbl_Forms objectAtIndex:indexPath.row];
     cell.imageView.image=[UIImage imageNamed:@"a.png"];;
    }
    else{
        
        cell.textLabel.text = [lbl_Profiles objectAtIndex:indexPath.row];
        cell.imageView.image= [UIImage imageNamed:@"b.png"];
        //[UIImage imageNamed:[img_Profiles objectAtIndex:indexPath.row]];
     
    }
    return cell;
}
- (IBAction)btnSegmanetTapped:(id)sender {
    
    if (_segmentController_HomeScreen.selectedSegmentIndex==0) {
        _formTable.tag = 0;
    }
    else
    {
        _formTable.tag = 1;
    }
    
    [_formTable reloadData];

}
@end
