//
//  ViewController.h
//  loginPage
//
//  Created by Priya on 21/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *registerbutton;
@property (strong, nonatomic) IBOutlet UITextField *usernametext;
@property (strong, nonatomic) IBOutlet UITextField *pswdtext;
@property (strong, nonatomic) IBOutlet UIButton *loginbutton;


- (IBAction)registerbutton:(UIButton *)sender;

- (IBAction)loginbutton:(UIButton *)sender;

@end

