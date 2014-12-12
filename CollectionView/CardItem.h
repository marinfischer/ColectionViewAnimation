//
//  CardItem.h
//  LifeWallet
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 LifeWallet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CardItem : NSObject

@property (nonatomic, strong, readonly) NSURL *imageURL;
@property (nonatomic, strong, readonly) UIImage *image;

+ (CardItem *)cardWithImageURL:(NSURL *)imageURL;

- (id)initWithImageURL:(NSURL *)imageURL;

@end
