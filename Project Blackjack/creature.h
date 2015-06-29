//
//  creature.h
//  Project Blackjack
//
//  Created by felix king on 29/06/2015.
//  Copyright (c) 2015 Felix King. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface creature : NSObject

- (NSDictionary *) allCalcs;

- (NSDictionary *) posibleCals;

- (NSDictionary *) possibleOperations;

- (NSDictionary *) possibleOther;


@end
