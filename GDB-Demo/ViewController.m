//
//  ViewController.m
//  GDB-Demo
//
//  Created by Prateek Gianchandani on 14/10/13.
//  Copyright (c) 2013 Prateek Gianchandani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;

@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)loginButtonTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonTapped:(id)sender {
  if([_usernameTextField.text isEqualToString:@"Admin"] && [_passwordTextField.text isEqualToString:@"HELLOIOSAPPLICATIONEXPERTS"]){
    [self performSegueWithIdentifier:@"adminPage" sender:self];
  }else{
    [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Incorrect Username or password" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
  }
}
@end
