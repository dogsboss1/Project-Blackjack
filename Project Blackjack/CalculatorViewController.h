//
//  CalculatorViewController.h
//  Project Blackjack
//
//  Created by felix king on 13/06/2015.
//  Copyright (c) 2015 Felix King. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController

//@property (weak, nonatomic) IBOutlet UITextView *calculationsDisplayTextField;

- (IBAction)showAllCalculationsButtonPressed:(UIButton *)sender;
- (IBAction)correctComboButtonPressed:(UIButton *)sender;

- (IBAction)ACButtonPressed:(UIButton *)sender;
- (IBAction)extrasButtonPressed:(UIButton *)sender;
- (IBAction)positiveOrNegativeButtonPressed:(UIButton *)sender;
- (IBAction)divideButtonPressed:(UIButton *)sender;
- (IBAction)timesButtonPressed:(UIButton *)sender;
- (IBAction)minusButtonPressed:(UIButton *)sender;
- (IBAction)plusButtonPressed:(UIButton *)sender;
- (IBAction)equalsButtonPressed:(UIButton *)sender;
- (IBAction)decimalButtonPressed:(UIButton *)sender;

- (IBAction)zeroButtonPressed:(UIButton *)sender;
- (IBAction)oneButtonPressed:(UIButton *)sender;
- (IBAction)twoButtonPressed:(UIButton *)sender;
- (IBAction)threeButtonPressed:(UIButton *)sender;
- (IBAction)fourButtonPressed:(UIButton *)sender;
- (IBAction)fiveButtonPressed:(UIButton *)sender;
- (IBAction)sixButtonPressed:(UIButton *)sender;
- (IBAction)sevenButtonPressed:(UIButton *)sender;
- (IBAction)eightButtonPressed:(UIButton *)sender;
- (IBAction)nineButtonPressed:(UIButton *)sender;

- (IBAction)testButtonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *calculationDisplayLabel;
@property (weak, nonatomic) IBOutlet UILabel *operatorLabel;
@end
