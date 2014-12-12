//
//  CardsCollectionViewController.h
//  CollectionView
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
// bananas

#import <UIKit/UIKit.h>
#import "CardLayoutView.h"
#import "CardCollectionViewCell.h"
#import "TypesCategory.h"
#import "CardItem.h"
#import "CardTransitionManager.h"

static NSString * const CardCellIdentifier = @"cardCell";

@interface CardsCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong, nonatomic) CardLayoutView *cardLayoutView;

@end
