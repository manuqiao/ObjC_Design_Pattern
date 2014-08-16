//
//  Dot.m
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-16.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize size = size_, color = color_;

- (void)dealloc
{
    [color_ release];
    [super dealloc];
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone
{
    Dot *dotCopy = [[[self class] allocWithZone:zone]  initWithLocation:location_];
    [dotCopy setColor:[UIColor colorWithCGColor:[color_ CGColor]]];
    [dotCopy setSize:size_];
    return dotCopy;
}

@end
