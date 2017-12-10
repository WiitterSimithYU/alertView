//
//  ViewController.m
//  网络顶部提示框
//
//  Created by Mr.Zhang on 2017/5/19.
//  Copyright © 2017年 Mr.Zhang. All rights reserved.
//

#import "ViewController.h"
#import "Nonetwork.h"
@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
//检查网络
- (IBAction)Clickbutton:(UIButton *)sender {
    
    Nonetwork *Nonet=[[Nonetwork alloc] initWithFrame:[UIScreen mainScreen].bounds];
    Nonet.Prompt=@"无法连接服务器，请检查你的网络设置";
    Nonet.typeDisappear=1;
    [Nonet popupWarningview];
    Nonet.returnsAnEventBlock = ^{
        NSLog(@"重新加载数据");
    };
    [self.view addSubview:Nonet];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
