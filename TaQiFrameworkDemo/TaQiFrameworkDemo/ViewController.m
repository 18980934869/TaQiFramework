//
//  ViewController.m
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import "ViewController.h"
#import "TaQiNetWorkConfig.h"
#import "TaQiRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = NSHomeDirectory();
    NSLog(@"NSHomeDirectory:%@",path);
    [TaQiNetWorkConfig initInterfacePathWithFileName:@"NetWorkApi"];
    [TaQiNetWorkConfig initServerPath:@"http://192.168.0.1:1000"];
    
    //[TaQiRequest ]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
