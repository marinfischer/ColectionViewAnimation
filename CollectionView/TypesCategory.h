//
//  Category.h
//  LifeWallet
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 LifeWallet. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CardItem;

@interface TypesCategory : NSObject

@property (nonatomic, strong) NSString *typeName;
@property (nonatomic, strong, readonly) NSArray *cards;

- (void)addCard:(CardItem *)card;
- (BOOL)removeCard:(CardItem *)Card;

@end
