//
//  CTIThirdViewController.m
//  TestingPopViewControllers
//
//  Created by Santhosh Kumar on 8/28/14.
//  Copyright (c) 2014 CreativeTechInc. All rights reserved.
//

#import "CTIThirdViewController.h"
#import "CTIAppDelegate.h"

@interface CTIThirdViewController()

@end

@implementation CTIThirdViewController

//@synthesize delegate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)displayFullScreenAction:(id)sender {
    CTIFullScreenViewController *vc = [[CTIFullScreenViewController alloc] initWithNibName:@"CTIFullScreenViewController" bundle:nil];
    CTIAppDelegate *delegate = (CTIAppDelegate *)[[UIApplication sharedApplication] delegate];
    [delegate.navController pushViewController:vc animated:YES];
    
}

- (IBAction)dismissVCAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        CTIAppDelegate *delegate = (CTIAppDelegate *)[[UIApplication sharedApplication] delegate];
        CTIFullScreenViewController *vc = [[CTIFullScreenViewController alloc]initWithNibName:@"CTIFullScreenViewController" bundle:nil];
        //        [self.navigationController pushViewController:vc animated:YES];
        [delegate.navController pushViewController:vc animated:YES];
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
