//
//  DESandMD5demoViewController.m
//  DESandMD5demo
//
//  Created by Xu Jian on 11/7/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "DESandMD5demoViewController.h"

@implementation DESandMD5demoViewController
@synthesize selectControl;
@synthesize txtType;
@synthesize txtOutputView;
@synthesize btnEncrypt;
@synthesize btnDecrypt;



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
    [super viewDidLoad];
	
	isMD5Mode = YES;
}

- (IBAction)selectControl:(UISegmentedControl *)sender
{
    if (sender.selectedSegmentIndex == 0)
    {
        isMD5Mode = YES;
        btnDecrypt.enabled = NO;
        btnDecrypt.hidden = YES;
    }
    else
    {
        isMD5Mode = NO;
        btnDecrypt.enabled = YES;
        btnDecrypt.hidden = NO;
    }
}

- (IBAction)doEncrypt:(id)sender 
{
    
}

- (IBAction)doDecrypt:(id)sender 
{
    
}

- (void)viewDidUnload 
{
    [self setSelectControl:nil];
    [self setTxtType:nil];
    [self setTxtOutputView:nil];
    [self setBtnEncrypt:nil];
    [self setBtnDecrypt:nil];
    [super viewDidUnload];
}

- (void)dealloc 
{
    [selectControl release];
    [txtType release];
    [txtOutputView release];
    [btnEncrypt release];
    [btnDecrypt release];
    [super dealloc];
}


#pragma mark -
#pragma mark textfield delegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
{
    if ([string isEqualToString:@"\n"])
    {
        [textField resignFirstResponder];
        NSLog(@"textFieldDidEndEditing");
        return YES;
    }
    return NO;
}

@end
