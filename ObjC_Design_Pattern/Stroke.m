//
//  Stroke.m
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-16.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke
@synthesize color = color_, size = size_;
@dynamic location;

- (id)init
{
    if (self = [super init]) {
        children_ = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (void)setLocation:(CGPoint)location
{

}
- (CGPoint)location
{
    if ([children_ count] > 0) {
        return [(id<Mark>)[children_ objectAtIndex:0] location];
    }
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark
{
    [children_ addObject:mark];
}

// 如果mark在这一层，删除，否则传到子节点删除
- (void)removeMark:(id<Mark>)mark
{
    if ([children_ containsObject:mark]) {
        [children_ removeObject:mark];
    }
    else {
        [children_ makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index
{
    if (index >= [children_ count]) {
        return nil;
    }
    return [children_ objectAtIndex:index];
}

- (id <Mark>)lastChild
{
    return [children_ lastObject];
}

- (NSUInteger)count
{
    return [children_ count];
}

- (void)dealloc
{
    [color_ release];
    [children_ release];
    [super dealloc];
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone
{
    Stroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    [strokeCopy setColor:[UIColor colorWithCGColor:[color_ CGColor]]];
    [strokeCopy setSize:size_];
    for (id<Mark> child in children_) {
        id<Mark> childCopy = [child copy];
        [strokeCopy addMark:childCopy];
        [childCopy release];
    }
    return strokeCopy;
}

@end
