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
    
    /*CGRect frame0 = [self.zeroButtonLabel frame];
    frame0.origin.x = 0;
    frame0.origin.y = 976;
    [self.zeroButtonLabel setFrame:frame0];*/
    
    [self.zeroButtonLabel setFrame:CGRectMake(0, self.view.frame.size.height - 150, 159, 160)];
    [self.oneButtonLabel setFrame:CGRectMake(0, 815, 159, 160)];
    [self.twoButtonLabel setFrame:CGRectMake(160, 815, 159, 160)];
    [self.threeButtonLabel setFrame:CGRectMake(320, 815, 159, 160)];
    [self.fourButtonLabel setFrame:CGRectMake(0, 654, 159, 160)];
    [self.fiveButtonLabel setFrame:CGRectMake(160, 654, 159, 160)];
    [self.sixButtonLabel setFrame:CGRectMake(320, 654, 159, 160)];
    [self.sevenButtonLabel setFrame:CGRectMake(0, 493, 159, 160)];
    [self.eightButtonLabel setFrame:CGRectMake(160, 493, 159, 160)];
    [self.nineButtonLabel setFrame:CGRectMake(320, 493, 159, 160)];
    
    [self.decimalButtonLabel setFrame:CGRectMake(320, 976, 159, 160)];
    [self.ACButtonLabel setFrame:CGRectMake(0, 332, 159, 160)];
    [self.extrasButtonLabel setFrame:CGRectMake(160, 332, 159, 160)];
    [self.postiiveOrNegativeButtonLabel setFrame:CGRectMake(320, 332, 159, 160)];
    
    [self.divideButtonLabel setFrame:CGRectMake(480, 332, 160, 160)];
    [self.multiplyButtonLabel setFrame:CGRectMake(480, 493, 160, 160)];
    [self.minusButtonLabel setFrame:CGRectMake(480, 654, 160, 160)];
    [self.plusButtonLabel setFrame:CGRectMake(480, 815, 160, 160)];
    [self.equalsButtonLabel setFrame:CGRectMake(480, 976, 160, 160)];
     
    
    [self.nineButtonLabel setImage:[UIImage imageNamed:@"calculator square - Numbs"] forState:UIControlStateNormal];
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
