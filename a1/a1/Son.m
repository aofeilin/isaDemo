//
//  Son.m
//  a1
//
//  Created by aofeilin on 2018/11/15.
//  Copyright © 2018年 com.sphere.opg.sbuy. All rights reserved.
//

#import "Son.h"

@implementation Son
- (instancetype)init
{
    self = [super init];
    if (self) {
        id obj1 = [self class];
        id obj2 = [super class];
        NSLog(@"%@",obj1);
        NSLog(@"%@",obj2);
        
    }
    return self;
}

@end
