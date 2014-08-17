//
//  AcmeBrandingFactory.m
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-17.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import "AcmeBrandingFactory.h"
#import "AcmeView.h"
#import "AcmeMainButton.h"
#import "AcmeToolbar.h"

@implementation AcmeBrandingFactory

- (UIView *)brandedView
{
    return [[[AcmeView alloc] init] autorelease];
}

- (UIButton *)brandedMainButton
{
    return [[[AcmeMainButton alloc] init] autorelease];
}

- (UIToolbar *)brandedToolbar
{
    return [[[AcmeToolbar alloc] init] autorelease];
}

@end
