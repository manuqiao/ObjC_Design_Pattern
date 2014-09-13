//
//  BrandingFactory.h
//  ObjC_Design_Pattern
//
//  Created by ManuQiao on 14-8-17.
//  Copyright (c) 2014年 manu. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface BrandingFactory : NSObject

+ (BrandingFactory *)factory;

- (UIView *)brandedView;
- (UIButton *)brandedMainButton;
- (UIToolbar *)brandedToolbar;

@end
