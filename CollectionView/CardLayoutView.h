//
//  CardLayout.h
//  CollectionView
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import <UIKit/UIKit.h>
UIKIT_EXTERN NSString * const CardLayoutInsuranceTypeKind;

@interface CardLayoutView : UICollectionViewLayout
@property (nonatomic) UIEdgeInsets itemInsets;
@property (nonatomic) CGSize itemSize;
@property (nonatomic) CGFloat interItemSpacingY;
@property (nonatomic) NSInteger numberOfColumns;
@property (nonatomic, strong) NSArray *rotations;
@property (nonatomic) CGFloat titleHeight;

@end
