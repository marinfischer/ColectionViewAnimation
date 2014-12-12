//
//  CardItem.m
//  LifeWallet
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 LifeWallet. All rights reserved.
//

#import "CardItem.h"

@interface CardItem()
@property (nonatomic, strong, readwrite) NSURL *imageURL;
@property (nonatomic, strong, readwrite) UIImage *image;

@end

@implementation CardItem
#pragma mark - Properties

- (UIImage *)image
{
    if (!_image && self.imageURL) {
        NSData *imageData = [NSData dataWithContentsOfURL:self.imageURL];
        UIImage *image = [UIImage imageWithData:imageData scale:[UIScreen mainScreen].scale];
        
        _image = image;
    }
    
    return _image;
}

#pragma mark - Lifecycle

+ (CardItem *)cardWithImageURL:(NSURL *)imageURL
{
    return [[self alloc] initWithImageURL:imageURL];
}

- (id)initWithImageURL:(NSURL *)imageURL
{
    self = [super init];
    if (self) {
        self.imageURL = imageURL;
    }
    return self;
}

@end
