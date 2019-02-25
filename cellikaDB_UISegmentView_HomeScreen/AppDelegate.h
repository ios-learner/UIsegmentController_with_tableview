//
//  AppDelegate.h
//  cellikaDB_UISegmentView_HomeScreen
//
//  Created by user148840 on 2/25/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

