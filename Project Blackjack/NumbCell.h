//
//  NumbCell.h
//  Project Blackjack
//
//  Created by felix king on 29/06/2015.
//  Copyright (c) 2015 Felix King. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumbCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
- (IBAction)numbButtonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *numbsButton;

@end
