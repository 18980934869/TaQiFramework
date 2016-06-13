//
//  TaQiPagerEntityBase.m
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import "TaQiPagerEntityBase.h"


@implementation TaQiPagerEntityBase 

- (NSArray *)getPagerResultsWithModelType:(Class)modelType{
    NSMutableArray *result = [NSMutableArray new];
    for (NSDictionary *dic in self.Result) {
        [result addObject:[modelType objectWithKeyValues:dic]];
    }
    return result;
}


@end
