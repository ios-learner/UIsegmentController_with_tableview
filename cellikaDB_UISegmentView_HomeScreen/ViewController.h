//
//  ViewController.h
//  cellikaDB_UISegmentView_HomeScreen
//
//  Created by user148840 on 2/25/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *lbl_Forms;
 //   NSMutableArray *img_Forms;
    NSMutableArray *lbl_Profiles;
 //   NSMutableArray *img_Profiles;
}
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentController_HomeScreen;

@property (strong, nonatomic) IBOutlet UITableView *formTable;
- (IBAction)btnSegmanetTapped:(id)sender;

@end

