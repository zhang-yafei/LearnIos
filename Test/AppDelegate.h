//
//  AppDelegate.h
//  Test
//
//  Created by 张亚飞 on 2018/10/10.
//  Copyright © 2018年 张亚飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "UpdateViewController.h"
//@class ViewController;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) UpdateViewController *updateViewController;


@end

