//
//  DESandMD5demoViewController.h
//  DESandMD5demo
//
//  Created by Xu Jian on 11/7/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DESandMD5demoViewController : UIViewController 
{
}

@property (retain, nonatomic) IBOutlet UISegmentedControl *selectControl;
@property (retain, nonatomic) IBOutlet UITextField *txtType;
@property (retain, nonatomic) IBOutlet UITextView *txtOutputView;
@property (retain, nonatomic) IBOutlet UIButton *btnEncrypt;
@property (retain, nonatomic) IBOutlet UIButton *btnDecrypt;
@end

