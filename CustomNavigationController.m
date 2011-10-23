//
//  CustomNavigationController.m
//
//  Created by Vitor Leonardi on 10/23/11.
//  Copyright (c) 2011 Vitor Leonardi. All rights reserved.
//  Licensed for use and distribution.


#import "CustomNavigationController.h"

@implementation CustomNavigationController
- (id)init
{
    self = [super init];
    if (self) {
        // --- Tests if it is the iOS 5
        if ([self.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) {
            [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"Put Your Image Here"] forBarMetrics:UIBarMetricsDefault];

            // --- Optionally sets the color of the navigation buttons
            UIColor *color = [UIColor colorWithRed:(100/255.0f) green:(100/255.0f) blue:(100/255.0f) alpha:1.0f];
            self.navigationBar.tintColor = color;
        }
    }
    return self;
}
@end
