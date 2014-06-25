//
//  Exercise1ViewController.h
//  Learning
//
//  Created by Phonex on 6/25/14.
//  Copyright (c) 2014 lifetime. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Exercise1ViewController : UIViewController <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *tfUsername;

@property (weak, nonatomic) IBOutlet UITextField *tfPassword;
- (IBAction)btSubmited:(id)sender;

@end
