//
//  CanvasViewController.h
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-17.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CanvasView;
@class CanvasViewGenerator;

@interface CanvasViewController : UIViewController
{
@private
    CanvasView *canvasView_;
}

@property (nonatomic, retain)CanvasView *canvasView;

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator;

@end
