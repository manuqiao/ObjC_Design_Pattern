//
//  ClothCanvasViewGenerator.m
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-17.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"
#import "ClothCanvasView.h"

@implementation ClothCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame
{
    return [[[ClothCanvasView alloc] initWithFrame:aFrame] autorelease];
}

@end
