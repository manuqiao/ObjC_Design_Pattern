//
//  PaperCanvasViewController.m
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-17.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"
#import "PaperCanvasView.h"

@implementation PaperCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame
{
    return [[[PaperCanvasView alloc] initWithFrame:aFrame] autorelease];
}

@end
