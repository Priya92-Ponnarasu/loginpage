//
//  contentViewController.h
//  loginPage
//
//  Created by Priya on 21/04/15.
//  Copyright (c) 2015 Priya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface contentViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageview;
@property (strong, nonatomic) IBOutlet UIButton *exitbutton;


- (IBAction)exitbutton:(UIButton *)sender;

@end
