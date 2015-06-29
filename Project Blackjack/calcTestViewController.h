//
//  calcTestViewController.h
//  Project Blackjack
//
//  Created by felix king on 29/06/2015.
//  Copyright (c) 2015 Felix King. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NumbCell.h"

@interface calcTestViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *calcualtionsLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@property NSDictionary * allCalcs;

@property NSDictionary * posibleCals;
@property NSDictionary * possibleOperations;
@property NSDictionary * possibleOther;

@end
