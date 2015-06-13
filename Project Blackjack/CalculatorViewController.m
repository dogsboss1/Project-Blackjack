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
    int optType;
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

- (void)addPoint {
    stack = [NSString stringWithFormat:@"%1$@.", stack];
    self.calculationDisplayLabel.text = stack;
}

- (void)logic:(int)type {
    if (type == 0) { // Equals
        if (optType == 1) {
            stack = [NSString stringWithFormat:@"%f", result + [stack doubleValue]];
            self.calculationDisplayLabel.text = stack;
        }
        else if (optType == 2) {
            stack = [NSString stringWithFormat:@"%f", result - [stack doubleValue]];
            self.calculationDisplayLabel.text = stack;
        }
        else if (optType == 3) {
            stack = [NSString stringWithFormat:@"%f", result * [stack doubleValue]];
            self.calculationDisplayLabel.text = stack;
        }
        else if (optType == 4) {
            stack = [NSString stringWithFormat:@"%f", result / [stack doubleValue]];
            self.calculationDisplayLabel.text = stack;
        }
        self.calculationDisplayLabel.text = stack;
        self.operatorLabel.text = @"=";
    }
    else {
    if (type == 1) { // Plus
        self.operatorLabel.text = @"+";
    }
    else if (type == 2) { // Subtraction
        self.operatorLabel.text = @"-";
        
    }
    else if (type == 3) { // Multiply
        self.operatorLabel.text = @"*";
    }
    else if (type == 4) { // Subtraction
        self.operatorLabel.text = @"/";
    }
    optType = type;
    result = [stack doubleValue];
    stack = @"0";
    self.calculationDisplayLabel.text = stack;
    }
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
    [self logic:4];
}

- (IBAction)timesButtonPressed:(UIButton *)sender {
    [self logic:3];
}

- (IBAction)minusButtonPressed:(UIButton *)sender {
    [self logic:2];
}

- (IBAction)plusButtonPressed:(UIButton *)sender {
    [self logic:1];
}

- (IBAction)equalsButtonPressed:(UIButton *)sender {
    [self logic:0];
}

- (IBAction)decimalButtonPressed:(UIButton *)sender {
    [self addPoint];
    
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

- (IBAction)testButtonPressed:(UIButton *)sender {
    self.calculationDisplayLabel.text = @"Test";
}
@end
