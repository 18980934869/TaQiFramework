//
//  TaQiEntityBase.h
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TaQiEntityConvert.h"

@interface TaQiEntityBase : TaQiEntityConvert

//编号
@property (nonatomic, copy) NSString *Id;

//版本号
@property (nonatomic) NSString *Version;

@end
