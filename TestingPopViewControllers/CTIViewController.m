//
//  CTIViewController.m
//  TestingPopViewControllers
//
//  Created by Santhosh Kumar on 8/28/14.
//  Copyright (c) 2014 CreativeTechInc. All rights reserved.
//

#import "CTIViewController.h"
#import "CTIFullScreenViewController.h"
#import "CTIAppDelegate.h"


@interface CTIViewController ()
@property (strong, nonatomic) IBOutlet UIButton *displayModalVC;

@end

@implementation CTIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)displayModalVCAction:(id)sender {
    CTISecondViewController *vc = [[CTISecondViewController alloc]initWithNibName:@"CTISecondViewController" bundle:nil];
    vc.modalPresentationStyle = UIModalPresentationFormSheet;
    vc.previousVC = self;
    //vc.delegate = self;
    //UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    //nav.delegate = self;
    //[self presentViewController:vc animated:YES completion:nil];
    
    CTIAppDelegate *delegate = (CTIAppDelegate *)[[UIApplication sharedApplication] delegate];
    [delegate.navController presentViewController:vc animated:YES completion:nil];
    //[vc release];

}

-(void)didReceiveMessage:(NSString *)theMessage {
    NSLog(@"Passed String %@", theMessage);
    [self dismissViewControllerAnimated:YES completion:nil];
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
