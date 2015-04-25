//
//  contentViewController.m
//  loginPage
//
//  Created by Priya on 21/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import "contentViewController.h"

@interface contentViewController ()

@end

@implementation contentViewController
@synthesize imageview,exitbutton;

- (void)viewDidLoad {
    [super viewDidLoad];
    [imageview setImage:[UIImage imageNamed:@"priya2.jpg"]];
    
    
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)exitbutton:(UIButton *)sender {
    //[self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
