//
//  DESandMD5demoViewController.m
//  DESandMD5demo
//
//  Created by Xu Jian on 11/7/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "DESandMD5demoViewController.h"
#import "Utility.h"

@implementation DESandMD5demoViewController
@synthesize txtKey;
@synthesize lblKey;
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
        btnEncrypt.hidden = YES;
        btnDecrypt.hidden = YES;
        lblKey.hidden = YES;
        txtKey.hidden = YES;
    }
    else
    {
        isMD5Mode = NO;
        btnEncrypt.hidden = NO;
        btnDecrypt.hidden = NO;
        lblKey.hidden = NO;
        txtKey.hidden = NO;
    }
}

- (IBAction)doEncrypt:(id)sender 
{
    if (isMD5Mode)
    {
        txtOutputView.text = [Utility md5:txtType.text];
    }
    else
    {
        txtOutputView.text = [Utility encryptStr:txtType.text key:txtKey.text];
    }
}

- (IBAction)doDecrypt:(id)sender 
{
    txtOutputView.text = [Utility decryptStr:txtType.text key:txtKey.text];
}

- (void)viewDidUnload 
{
    [self setSelectControl:nil];
    [self setTxtType:nil];
    [self setTxtOutputView:nil];
    [self setBtnEncrypt:nil];
    [self setBtnDecrypt:nil];
    [self setTxtKey:nil];
    [self setLblKey:nil];
    [super viewDidUnload];
}

- (void)dealloc 
{
    [selectControl release];
    [txtType release];
    [txtOutputView release];
    [btnEncrypt release];
    [btnDecrypt release];
    [txtKey release];
    [lblKey release];
    [super dealloc];
}


#pragma mark -
#pragma mark textfield delegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
{
    if ([string isEqualToString:@"\n"])
    {
        [textField resignFirstResponder];
        
        if (textField.text && textField.tag != 1 && isMD5Mode)
            [self doEncrypt:btnEncrypt];
    }
    
    return YES;
}

@end
