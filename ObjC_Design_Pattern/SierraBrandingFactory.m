//
//  SierraBrandingFactory.m
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-17.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import "SierraBrandingFactory.h"
#import "SierraMainButton.h"
#import "SierraToolbar.h"
#import "SierraView.h"

@implementation SierraBrandingFactory

- (UIView *)brandedView
{
    return [[[SierraView alloc] init] autorelease];
}

- (UIButton *)brandedMainButton
{
    return [[[SierraMainButton alloc] init] autorelease];
}

- (UIToolbar *)brandedToolbar
{
    return [[[SierraToolbar alloc] init] autorelease];
}

@end
