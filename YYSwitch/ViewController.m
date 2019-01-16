//
//  ViewController.m
//  YYSwitch
//
//  Created by Liandi on 2019/1/3.
//  Copyright © 2019年 Liandi. All rights reserved.
//

#import "ViewController.h"
#import "SwitchView.h"

@interface ViewController ()<SwitchViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SwitchView *switchView1 = [[SwitchView alloc]initWithFrame:CGRectMake(100, 200, 64, 32)];
    switchView1.on = NO;
    switchView1.delegate = self;
    [self.view addSubview:switchView1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)switchView_didChangeValue:(nonnull SwitchView *)zpswitch value:(BOOL)value {
    NSLog(@"%@", @(value));
}

@end
