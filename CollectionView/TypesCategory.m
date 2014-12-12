//
//  Category.m
//  LifeWallet
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 LifeWallet. All rights reserved.
//

#import "TypesCategory.h"
#import "CardItem.h"

@interface TypesCategory ()
@property (nonatomic, strong) NSMutableArray *mutableCards;

@end

@implementation TypesCategory
#pragma mark - Properties

- (NSArray *)cards
{
    return [self.mutableCards copy];
}


#pragma mark - Lifecycle

- (id)init
{
    self = [super init];
    if (self) {
        self.mutableCards = [NSMutableArray array];
    }
    return self;
}

#pragma mark - Photos

- (void)addCard:(CardItem *)card
{
    [self.mutableCards addObject:card];
}

- (BOOL)removeCard:(CardItem *)card
{
    if ([self.mutableCards indexOfObject:card] == NSNotFound) {
        return NO;
    }
    
    [self.mutableCards removeObject:card];
    
    return YES;
}

@end
