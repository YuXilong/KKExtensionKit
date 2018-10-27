//
//  KKViewController.m
//  KKExtensionKit
//
//  Created by JackYu on 10/23/2018.
//  Copyright (c) 2018 JackYu. All rights reserved.
//

#import "KKViewController.h"
#import <KKExtensionKit/KKExtensionKit.h>

@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [SVProgressHUD kk_papareForCommonStyle];
}

- (IBAction)btnClick:(id)sender {
    [SVProgressHUD showWithStatus:@"请稍后"];
    kk_dispatch_after_on_main_queue(2.0, ^{
        [SVProgressHUD showSuccessWithStatus:@"修改成功"];
        UIViewController *vc = [UIViewController new];
        vc.preferredContentSize = CGSizeMake(KKScreenWidth, 300);
        vc.view.backgroundColor = [UIColor whiteColor];
        [self kk_presentBottomVC:vc autoDismiss:YES];
        DDLogDebug(@"===>%@",[UIViewController kk_getTopViewController]);
    });
}


@end
