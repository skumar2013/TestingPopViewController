//
//  UIViewController+ModalPush.m
//  TestingPopViewControllers
//
//  Created by Santhosh Kumar on 8/29/14.
//  Copyright (c) 2014 CreativeTechInc. All rights reserved.
//

#import "UIViewController+ModalPush.h"

@implementation UIViewController (ModalPush)

- (void)pushViewControllerFromModal:(UIViewController *)VC animated:(BOOL)animated
{
    // Some neccessary iOS magic from http://www.kickasslabs.com/2009/07/03/uinavigationcontroller-tricks/
    UIViewController * parentNavVC = (UIViewController *)self.navigationController.delegate;
    [parentNavVC.navigationController pushViewController:VC animated:animated];
    // After we pushed, we can dismiss the modal view
    [self.parentViewController dismissViewControllerAnimated:animated completion:nil];
}

@end
