//
//  Dot.h
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-16.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import "Vertex.h"

@interface Dot : Vertex
{
@private
    UIColor *color_;
    CGFloat size_;
}

@property (nonatomic, retain)UIColor *color;
@property (nonatomic, assign)CGFloat size;

- (id)copyWithZone:(NSZone *)zone;

@end
