//
//  CTIThirdViewController.h
//  TestingPopViewControllers
//
//  Created by Santhosh Kumar on 8/28/14.
//  Copyright (c) 2014 CreativeTechInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTIFullScreenViewController.h"
#import "CTIDismissModalDelegate.h"


@interface CTIThirdViewController : UIViewController {
    //id <CTIDismissModalDelegate> delegate;
}

//@property (retain) id <CTIDismissModalDelegate> delegate;

@property UIViewController *previousVC;

@end