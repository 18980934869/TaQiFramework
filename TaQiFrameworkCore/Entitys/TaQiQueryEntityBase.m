//
//  TaQiQueryEntityBase.m
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import "TaQiQueryEntityBase.h"

@implementation TaQiQueryEntityBase

- (instancetype)init{
    self = [super init];
    
    self.PageCount = INT32_MAX;
    self.TotalCount = INT32_MAX;
    self.Page = 1;
    self.PageSize = 50;
    
    return self;
}

- (void)maxPageSize{
    self.PageSize = INT32_MAX;
}

@end
