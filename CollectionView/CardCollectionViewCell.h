//
//  CardCollectionViewCell.h
//  CollectionView
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CardCollectionViewCell : UICollectionViewCell
@property (nonatomic, strong, readonly) UIImageView *imageView;
@property (nonatomic, strong, readonly) UILabel *insTypeName;
@property (nonatomic, strong, readonly) UIImageView *backgroundImageView;

@end
