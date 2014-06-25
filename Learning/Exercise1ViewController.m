//
//  Exercise1ViewController.m
//  Learning
//
//  Created by Phonex on 6/25/14.
//  Copyright (c) 2014 lifetime. All rights reserved.
//

#import "Exercise1ViewController.h"

@interface Exercise1ViewController ()


@end

@implementation Exercise1ViewController
@synthesize tfPassword;
@synthesize tfUsername;


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
    //@author:phonex
    //link delegate button
    
    self.tfUsername.delegate = self;
    self.tfPassword.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//@author:phonex
//handle click submit button
- (IBAction)btSubmited:(id)sender {
    if([[tfUsername text] isEqualToString:@"tung"] && [[tfPassword text] isEqualToString:@"12345"] )
    {
        UIAlertView *loginAlert = [[UIAlertView alloc]
                                   initWithTitle:@"Login" message:@"Login Succeded" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [loginAlert show];
    }
    else {
        UIAlertView *loginAlert = [[UIAlertView alloc]
                                   initWithTitle:@"Login" message:@"Login Failed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [loginAlert show];
        
    }
}


//@author:phonex
//define new method for return key
- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
    
    if (textField == tfUsername) {
        
        [textField resignFirstResponder];
        [tfPassword becomeFirstResponder];
        
    }
    else if(textField==tfPassword){
        
        if([[tfUsername text] isEqualToString:@"tung"] && [[tfPassword text] isEqualToString:@"12345"] )
        {
            UIAlertView *loginAlert = [[UIAlertView alloc]
                                       initWithTitle:@"Login" message:@"Login Succeded" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [loginAlert show];
        }
        else {
            UIAlertView *loginAlert = [[UIAlertView alloc]
                                       initWithTitle:@"Login" message:@"Login Failed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            [loginAlert show];
            
        }
        
        
    }
    return YES;
}

@end


