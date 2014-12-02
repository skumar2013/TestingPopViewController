//
//  CTISecondViewController.m
//  TestingPopViewControllers
//
//  Created by Santhosh Kumar on 8/28/14.
//  Copyright (c) 2014 CreativeTechInc. All rights reserved.
//

#import "CTISecondViewController.h"
#import "CTIFullScreenViewController.h"
#import "CTIAppDelegate.h"

@interface CTISecondViewController ()

@end

@implementation CTISecondViewController

//@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)displayModalVCAction:(id)sender {
    CTIThirdViewController *vc = [[CTIThirdViewController alloc]initWithNibName:@"CTIThirdViewController" bundle:nil];
    vc.modalPresentationStyle = UIModalPresentationFormSheet;
    //vc.delegate = self;
    /*
    [self dismissViewControllerAnimated:YES completion:^{
        [self.previousVC presentViewController:vc animated:YES completion:nil];
    }];
    */
    //[self presentViewController:vc animated:YES completion:nil];
    
    [self dismissViewControllerAnimated:YES completion:^{
        CTIAppDelegate *delegate = (CTIAppDelegate *)[[UIApplication sharedApplication] delegate];
        [delegate.navController presentViewController:vc animated:YES completion:nil];
    }];
    
    
}
/*
- (void)popBackToHomeScreen {
    NSArray *viewControllers = self.navigationController.viewControllers;
    [self.navigationController popToViewController: [viewControllers objectAtIndex:0] animated: YES];
}
*/

- (IBAction)dismissVCAction:(id)sender {
    //[self popBackToHomeScreen];
    //[self.presentingViewController dismissViewControllerAnimated:NO completion:nil];
    //[delegate didReceiveMessage:@"This is a test"];
    //[self.delegate dismissModalPresentVC];
    //[self dismissModalPresentVC];
    
    [self dismissViewControllerAnimated:YES completion:^{
        CTIAppDelegate *delegate = (CTIAppDelegate *)[[UIApplication sharedApplication] delegate];
        CTIFullScreenViewController *vc = [[CTIFullScreenViewController alloc]initWithNibName:@"CTIFullScreenViewController" bundle:nil];
//        [self.navigationController pushViewController:vc animated:YES];
        [delegate.navController pushViewController:vc animated:YES];
    }];
    
    
    //CTIAppDelegate *delegate = (CTIAppDelegate *)[[UIApplication sharedApplication] delegate];
    //[delegate.navController dismissViewControllerAnimated:NO completion:nil];
}

-(void)dismissModalPresentVC {
    [self dismissViewControllerAnimated:NO completion:^{
        [self presentAnotherViewController];
    }];
}

-(void)presentAnotherViewController {
    CTIFullScreenViewController *vc = [[CTIFullScreenViewController alloc]initWithNibName:@"CTIFullScreenViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
