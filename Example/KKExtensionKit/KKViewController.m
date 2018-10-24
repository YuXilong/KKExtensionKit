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

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [SVProgressHUD dismiss];
}
- (IBAction)btnClick:(id)sender {
    [SVProgressHUD showWithStatus:@"请稍后"];
    kk_dispatch_after_on_main_queue(2.0, ^{
        [SVProgressHUD showSuccessWithStatus:@"修改成功"];
    });
}


@end
