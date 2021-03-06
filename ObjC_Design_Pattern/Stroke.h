//
//  Stroke.h
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-16.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Stroke : NSObject<Mark, NSCopying>
{
@private
    UIColor *color_;
    CGFloat size_;
    NSMutableArray *children_;
}

@property (nonatomic, retain)UIColor *color;
@property (nonatomic, assign)CGFloat size;
@property (nonatomic, assign)CGPoint location;
@property (nonatomic, readonly)NSUInteger count; //子节点个数
@property (nonatomic, readonly)id<Mark>lastChild;

- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;
- (id)copyWithZone:(NSZone *)zone;
@end
