//
//  creature.m
//  Project Blackjack
//
//  Created by felix king on 29/06/2015.
//  Copyright (c) 2015 Felix King. All rights reserved.
//

#import "creature.h"

@implementation creature

- (NSDictionary *)allCalcs {
    
    NSMutableArray *possibleOptions = [[NSMutableArray alloc] init];
    NSInteger num;
    
    for (int x = 0; x < 20; x++) {
        num = x;
        [possibleOptions addObject:[NSNumber numberWithInt:num]];
    }
    
    NSArray * options = [[NSArray alloc] initWithObjects:@"AC", @"()", "+/-", @"/", @"7", @"8", @"9", @"X", @"4", @"5", @"6", @"-", @"1", @"2", @"3", @"+", @"0", @"nothing", @".", @"=", nil];
    
    return [NSDictionary dictionaryWithObjects:options forKeys: possibleOptions];
}

- (NSDictionary *)posibleCals {
    return [NSDictionary dictionaryWithObjects:@[@"4", @"5", @"6", @"8", @"9", @"10", @"12", @"13", @"14", @"16", @"18"] forKeys:@[@"7", @"8", @"9", @"4", @"5", @"6", @"1", @"2", @"3", @"0", @"."]];
}

- (NSDictionary *)possibleOperations {
    return [NSDictionary dictionaryWithObjects:@[] forKeys:@[]];
}

- (NSDictionary *)possibleOther {
    return [NSDictionary dictionaryWithObjects:@[] forKeys:@[]];
}
@end
