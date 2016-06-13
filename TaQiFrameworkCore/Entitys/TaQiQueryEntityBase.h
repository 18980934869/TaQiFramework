//
//  TaQiQueryEntityBase.h
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaQiQueryEntityBase : NSObject

@property (nonatomic, assign) NSInteger PageSize;
@property (nonatomic, assign) NSInteger Page;
@property (nonatomic, assign) NSInteger PageCount;
@property (nonatomic, assign) NSInteger TotalCount;

- (void)maxPageSize;
@end
