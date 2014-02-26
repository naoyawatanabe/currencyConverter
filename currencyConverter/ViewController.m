//
//  ViewController.m
//  currencyConverter
//
//  Created by nao on 2014/02/16.
//  Copyright (c) 2014年 showandtell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    float input;
    float rate;
    float result;
    BOOL isYenToDollar;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    rate = 102.3;
    input = 0;
    result = 0;
    isYenToDollar = YES;
    labelRate.text = [NSString stringWithFormat:@"変換レート:1ドル %.1f円", rate];
    labelResult.text = [NSString stringWithFormat:@"%.2fドル", result];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldReturn:(UITextField*) textField
{
    [textField resignFirstResponder];
    [self calc];
    return YES;
}

- (void) calc
{
    input = [textFieldImput.text floatValue];
    
    if (isYenToDollar) {
        result = input / rate;
        labelResult.text = [NSString stringWithFormat:@"%.2fドル", result];
    } else {
        result = rate * input;
        labelResult.text = [NSString stringWithFormat:@"%.0f円", result];
    }
}

- (IBAction)changeCurrency
{
    
    if (selector.selectedSegmentIndex == 0) {
        labelCurrency.text = @"円";
        labelResult.text = [NSString stringWithFormat:@"%.2fドル", result];
        isYenToDollar = !isYenToDollar;
    } else {
        labelCurrency.text = @"ドル";
        labelResult.text = [NSString stringWithFormat:@"%.0f円", result];
        isYenToDollar = !isYenToDollar;
    }
    
    [self calc];
    
}


@end