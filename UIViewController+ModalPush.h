//
//  UIViewController+ModalPush.h
//  TestingPopViewControllers
//
//  Created by Santhosh Kumar on 8/29/14.
//  Copyright (c) 2014 CreativeTechInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ModalPush)

- (void)pushViewControllerFromModal:(UIViewController *)VC animated:(BOOL)animated;

@end
