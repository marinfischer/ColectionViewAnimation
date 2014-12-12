//
//  CardCollectionViewCell.m
//  CollectionView
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import "CardCollectionViewCell.h"

@interface CardCollectionViewCell ()
@property (nonatomic, strong, readwrite) UIImageView *imageView;
@property (nonatomic, strong, readwrite) UILabel *insTypeName;
@property (nonatomic, strong, readwrite) UIImageView *backgroundImageView;

@end

@implementation CardCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.layer.cornerRadius = 8.0f;
        self.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
        self.layer.borderWidth = 0.50f;

        self.layer.rasterizationScale = [UIScreen mainScreen].scale;
        self.layer.shouldRasterize = YES;
        
        self.backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height)];
        self.backgroundImageView.layer.cornerRadius = 8.0f;
        self.backgroundImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        self.backgroundImageView.layer.borderWidth = 0.50f;
        self.backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
        self.backgroundImageView.clipsToBounds = YES;

        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.bounds.origin.x + 30.0f, self.bounds.origin.y +15.0f, self.bounds.size.width - 60.0f, self.bounds.size.height - 50.0f)];
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        self.imageView.clipsToBounds = YES;
        
        self.insTypeName = [[UILabel alloc] initWithFrame:CGRectMake(self.bounds.origin.x, self.bounds.size.height - 20.0f, self.bounds.size.width, 20.0f)];
        self.insTypeName.clipsToBounds = YES;
        self.insTypeName.textAlignment = NSTextAlignmentCenter;

        
        [self.contentView addSubview:self.backgroundImageView];
        [self.contentView addSubview:self.imageView];
        [self.contentView addSubview:self.insTypeName];
    }
    return self;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    
    self.imageView.image = nil;
    self.insTypeName.text = nil;
}

@end
