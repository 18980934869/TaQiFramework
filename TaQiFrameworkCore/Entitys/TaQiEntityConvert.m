//
//  TaQiEntityConvert.m
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import "TaQiEntityConvert.h"


@implementation TaQiEntityConvert

- (id)newValueFromOldValue:(id)oldValue property:(MJProperty *)property{
    //处理null
    if (oldValue == [NSNull null]) {
        return nil;
    }
    //处理时间
    if (property.type.typeClass == [NSDate class]) {
        NSString *timeStr = (NSString *)oldValue;
        NSString *time = [[timeStr componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet]] componentsJoinedByString:@""];
        NSTimeInterval interval = [time doubleValue]/1000;
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:interval];
        return date;
    }
    //处理版本
    if (property.type.typeClass == [NSString class] && [property.name isEqualToString:@"Version"]) {
        NSArray *versions = oldValue;
        NSString *versionStr = @"";
        for (NSNumber *num in versions) {
            versionStr = [NSString stringWithFormat:@"%@%@,",versionStr,[num stringValue]];
        }
        if (versionStr.length) {
            versionStr = [versionStr substringToIndex:versionStr.length - 1];
            versionStr = [NSString stringWithFormat:@"[%@]",versionStr];
            return versionStr;
        }
        return @"";
    }
    
    return oldValue;
}

@end
