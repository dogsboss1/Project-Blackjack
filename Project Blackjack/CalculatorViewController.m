//
//  CalculatorViewController.m
//  Project Blackjack
//
//  Created by felix king on 13/06/2015.
//  Copyright (c) 2015 Felix King. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController () {
    NSString *stack;
    double result;
}

@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)addNumber:(int)number {
    
    if (stack == NULL) {
        stack = @"0";
    }
    
    if (number > -1) {
        stack = [NSString stringWithFormat:@"%1$@%2$d", stack, number];
    }
    else if ([stack length] > 0) {
        stack = [stack substringToIndex:[stack length] -1];
    }
    
    if ([stack length] <= 0) {
        stack = @"";
    }
    self.calculationDisplayLabel.text = stack;
}


- (IBAction)showAllCalculationsButtonPressed:(UIButton *)sender{
    
}

- (IBAction)correctComboButtonPressed:(UIButton *)sender {
    
}
- (IBAction)ACButtonPressed:(UIButton *)sender {
    [self addNumber:-1];
    
}

- (IBAction)extrasButtonPressed:(UIButton *)sender {
    
}

- (IBAction)positiveOrNegativeButtonPressed:(UIButton *)sender {
}

- (IBAction)divideButtonPressed:(UIButton *)sender {
}

- (IBAction)timesButtonPressed:(UIButton *)sender {
}

- (IBAction)minusButtonPressed:(UIButton *)sender {
}

- (IBAction)plusButtonPressed:(UIButton *)sender {
}

- (IBAction)equalsButtonPressed:(UIButton *)sender {
}

- (IBAction)decimalButtonPressed:(UIButton *)sender {
    
}

- (IBAction)zeroButtonPressed:(UIButton *)sender {
    [self addNumber:0];
}

- (IBAction)oneButtonPressed:(UIButton *)sender {
    [self addNumber:1];
}

- (IBAction)twoButtonPressed:(UIButton *)sender {
    [self addNumber:2];
}

- (IBAction)threeButtonPressed:(UIButton *)sender {
    [self addNumber:3];
}

- (IBAction)fourButtonPressed:(UIButton *)sender {
    [self addNumber:4];
}

- (IBAction)fiveButtonPressed:(UIButton *)sender {
    [self addNumber:5];
}

- (IBAction)sixButtonPressed:(UIButton *)sender {
    [self addNumber:6];
}

- (IBAction)sevenButtonPressed:(UIButton *)sender {
    [self addNumber:7];
}

- (IBAction)eightButtonPressed:(UIButton *)sender {
    [self addNumber:8];
}

- (IBAction)nineButtonPressed:(UIButton *)sender {
    [self addNumber:9];
}
@end
