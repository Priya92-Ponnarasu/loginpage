//
//  ViewController.m
//  loginPage
//
//  Created by Priya on 21/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//


#import "ViewController.h"
#import "Register.h"
#import "contentViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize registerbutton, usernametext, pswdtext, loginbutton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registerbutton:(UIButton *)sender {
    Register *reg = [[Register alloc] initWithNibName:@"Register" bundle:nil];
    //[self presentViewController:reg animated:YES completion:nil];
    [self.navigationController pushViewController:reg animated:YES];
}

- (IBAction)loginbutton:(UIButton *)sender
{
    if ([usernametext.text isEqualToString:@"priya"] &&[pswdtext.text isEqualToString:@"priyapr"])
    {
    contentViewController *content=[[contentViewController alloc] initWithNibName:@"contentViewController" bundle:nil];
        //[self presentViewController:content animated:YES completion:nil];
        [self.navigationController pushViewController:content animated:YES];
    }
    else
    {
        UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"Login Alert" message:@"Invalid login id or password" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alert show];

    }
}
@end
