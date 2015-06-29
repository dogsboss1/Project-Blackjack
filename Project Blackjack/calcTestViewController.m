//
//  calcTestViewController.m
//  Project Blackjack
//
//  Created by felix king on 29/06/2015.
//  Copyright (c) 2015 Felix King. All rights reserved.
//

#import "calcTestViewController.h"

@implementation calcTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *possibleOptions = [[NSMutableArray alloc] init];
    
    for (int x = 0; x < 20; x++) {
        [possibleOptions addObject:[NSNumber numberWithInt:x]];
    }
    
    NSArray * options = [[NSArray alloc] initWithObjects:@"AC", @"()", @"+/-", @"/", @"7", @"8", @"9", @"X", @"4", @"5", @"6", @"-", @"1", @"2", @"3", @"+", @"0", @"nothing", @".", @"=", nil];

    self.allCalcs = [NSDictionary dictionaryWithObjects:options forKeys: possibleOptions];
    self.posibleCals = [NSDictionary dictionaryWithObjects:@[@"4", @"5", @"6", @"8", @"9", @"10", @"12", @"13", @"14", @"16", @"18"] forKeys:@[@"7", @"8", @"9", @"4", @"5", @"6", @"1", @"2", @"3", @"0", @"."]];
    self.possibleOperations = [NSDictionary dictionaryWithObjects:@[] forKeys:@[]];
    self.possibleOther = [NSDictionary dictionaryWithObjects:@[] forKeys:@[]];
    
    self.calcualtionsLabel.text = @"Maths";
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}
/*
- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake((self.calcCollectionView.frame.size.width - 3) / 4, (self.calcCollectionView.frame.size.width - 4) / 5);
}*/
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NumbCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"numbs"
                                                               forIndexPath:indexPath];
    
    for (int x = 0; x < 20; x++) {
        [cell.numbsButton setTitle:[NSString stringWithFormat:@"%@", [self.allCalcs objectForKey:[NSNumber numberWithInt:x]]] forState:UIControlStateNormal];
    }
    cell.backgroundImage.image = [UIImage imageNamed:@""];

    
    NSArray *tempArrayPossibleCalcs = [self.posibleCals allKeys];
    NSArray *tempArrayPossibleOperations = [self.possibleOperations allKeys];
    NSArray *tempArrayPossibleOther = [self.possibleOther allKeys];
    
    NSString *word = [NSString stringWithFormat:@"%@", indexPath];
    
    for (int x = 0; x < 20; x++) {
        if ([word isEqualToString:[tempArrayPossibleCalcs objectAtIndex:x]]) {
            cell.backgroundImage.image = [UIImage imageNamed:@"calculator square - Numbs"];
            [cell.numbsButton setTitle:[NSString stringWithFormat:@"%@", [self.posibleCals objectForKey:indexPath]]
                              forState:UIControlStateNormal];
        }
    }
    for (int x = 0; x < 20; x++) {
        if ([word isEqualToString:[tempArrayPossibleOperations objectAtIndex:x]]) {
            cell.backgroundImage.image = [UIImage imageNamed:@"calculator square - Operator"];
            [cell.numbsButton setTitle:[NSString stringWithFormat:@"%@", [self.possibleOperations objectForKey:indexPath]]
                              forState:UIControlStateNormal];
        }
    }
    for (int x = 0; x < 20; x++) {
        if ([word isEqualToString:[tempArrayPossibleOther objectAtIndex:x]]) {
            cell.backgroundImage.image = [UIImage imageNamed:@"calculator square other"];
        [cell.numbsButton setTitle:[NSString stringWithFormat:@"%@", [self.possibleOther objectForKey:indexPath]]
                          forState:UIControlStateNormal];
        }
    }
    
    cell.backgroundColor = [UIColor redColor];
    cell.backgroundImage.image = [UIImage imageNamed:@"calculator square - Numbs"];
    [cell.numbsButton setTitle:@"Working" forState:UIControlStateNormal];
    return cell;
}

@end
