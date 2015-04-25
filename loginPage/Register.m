//
//  Register.m
//  loginPage
//
//  Created by Priya on 21/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import "Register.h"

@interface Register ()

@end

@implementation Register
@synthesize usertext, gendersegment, gendertext, ageslider, agetext, mailtext, pswdtext, confirmtext, addresstext, registerbutton,indiantext,indianswitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)gendersegment:(UISegmentedControl *)sender
{
    if (gendersegment.selectedSegmentIndex == 0)
    {
      gendertext.text=@"Male";
    }
    else{
        gendertext.text=@"Female";
    }
    
}

- (IBAction)ageslider:(UISlider *)sender
{
    NSInteger age = ageslider.value;
    agetext.text= [NSString stringWithFormat:@"%ld",age];
}

- (IBAction)registerbutton:(UIButton *)sender
{
       if (usertext.text.length < 1) {
        UIAlertView *at =[[UIAlertView alloc]initWithTitle:nil message:@"Enter the username" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [at show];
       }
       else if(gendertext.text.length < 1)
        {
            UIAlertView *at =[[UIAlertView alloc]initWithTitle:nil message:@"Select the gender" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [at show];
        }
        else if(agetext.text.length < 1)
        {
            UIAlertView *at =[[UIAlertView alloc]initWithTitle:nil message:@"Select the age" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [at show];
        }
        else if(indiantext.text.length < 1)
        {
            UIAlertView *at =[[UIAlertView alloc]initWithTitle:nil message:@"Select the nationality" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [at show];
        }
        else if(![mailtext.text containsString:@"@"] || ![mailtext.text containsString:@"."])
        {
            UIAlertView *at =[[UIAlertView alloc]initWithTitle:nil message:@"Enter a valid mail id" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [at show];
        }
    
        else if(mailtext.text.length < 1)
        {
            UIAlertView *at =[[UIAlertView alloc]initWithTitle:nil message:@"Enter the mail id" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [at show];
        }
        else if(addresstext.text.length < 1)
        {
           UIAlertView *at =[[UIAlertView alloc]initWithTitle:nil message:@"Enter the address" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [at show];
        }
    
        else if (![pswdtext.text isEqualToString:confirmtext.text])
        {
            UIAlertView *alt =[[UIAlertView alloc]initWithTitle:nil message:@"Password mismatched" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [alt show];
        }
      else
      {
         UIAlertView *alt =[[UIAlertView alloc]initWithTitle:nil message:@"Registered Successfully" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        [alt show];
     }

    
}

- (IBAction)indianswitch:(UISwitch *)sender {
    if (indianswitch.isOn) {
        indiantext.text=@"Indian";
    }
    else
    {
        indiantext.text=@"foreigneer";
    }
}
@end
