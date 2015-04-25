//
//  Register.h
//  loginPage
//
//  Created by Priya on 21/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Register : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *usertext;
@property (strong, nonatomic) IBOutlet UITextField *gendertext;
@property (strong, nonatomic) IBOutlet UISegmentedControl *gendersegment;
@property (strong, nonatomic) IBOutlet UITextField *agetext;
@property (strong, nonatomic) IBOutlet UISlider *ageslider;
@property (strong, nonatomic) IBOutlet UITextField *mailtext;
@property (strong, nonatomic) IBOutlet UITextField *pswdtext;
@property (strong, nonatomic) IBOutlet UITextField *confirmtext;
@property (strong, nonatomic) IBOutlet UITextView *addresstext;
@property (strong, nonatomic) IBOutlet UIButton *registerbutton;
@property (strong, nonatomic) IBOutlet UITextField *indiantext;
@property (strong, nonatomic) IBOutlet UISwitch *indianswitch;


- (IBAction)gendersegment:(UISegmentedControl *)sender;
- (IBAction)ageslider:(UISlider *)sender;

- (IBAction)registerbutton:(UIButton *)sender;

- (IBAction)indianswitch:(UISwitch *)sender;

@end
