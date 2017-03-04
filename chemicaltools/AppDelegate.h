//
//  AppDelegate.h
//  chemicaltools
//
//  Created by 曾晋哲 on 2016/11/2.
//  Copyright © 2016年 曾晋哲. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <AVOSCloud/AVOSCloud.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

