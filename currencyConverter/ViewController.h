//
//  ViewController.h
//  currencyConverter
//
//  Created by nao on 2014/02/16.
//  Copyright (c) 2014年 showandtell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UISegmentedControl *selector;
    IBOutlet UITextField *textFieldImput;
    IBOutlet UILabel *labelCurrency;
    IBOutlet UILabel *labelRate;
    IBOutlet UILabel *labelResult;
    
}
@end