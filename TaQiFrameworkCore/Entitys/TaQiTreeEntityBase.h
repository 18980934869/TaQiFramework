//
//  TaQiTreeEntityBase.h
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TaQiEntityBase.h"

@interface TaQiTreeEntityBase : TaQiEntityBase

/**
 *  父编号
 */
@property (nonatomic, copy) NSString *ParentId;

/**
 *  关系
 */
@property (nonatomic, copy) NSString *Relation;

/**
 *  级数
 */
@property (nonatomic, assign) NSInteger Level;

/**
 *  排序编号
 */
@property (nonatomic, assign) NSInteger SortId;

@end
