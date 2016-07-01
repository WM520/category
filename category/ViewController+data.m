//
//  ViewController+data.m
//  category
//
//  Created by David on 16/7/1.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "ViewController+data.h"
#import <objc/runtime.h>

@implementation ViewController (data)


- (NSArray *)array
{
    return objc_getAssociatedObject(self, @selector(array));
}

- (void)setArray:(NSObject *)value
{
    objc_setAssociatedObject(self, @selector(array), value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (void)loadData
{
    self.array = @[@1, @2, @3];
    NSLog(@"%@", self.array);
}

@end
