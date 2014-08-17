//
//  BrandingFactory.m
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-17.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory
{
#if defined (USE_ACME)
    return [[[AcmeBrandingFactory alloc] init] autorelease];
#elif defined (USE_SIERRA)
    return [[[SierraBrandingFactory alloc] init] autorelease];
#else
    return nil;
#endif
}

- (UIView *)brandedView
{
    return nil;
}

- (UIButton *)brandedMainButton
{
    return nil;
}

- (UIToolbar *)brandedToolbar
{
    return nil;
}

@end
