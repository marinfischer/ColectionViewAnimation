//
//  CardTransitionManager.h
//  CollectionView
//
//  Created by Marin Fischer on 12/10/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@protocol CardTransitionManagerDelegate <NSObject>

- (void)interactionBeganAtPoint:(CGPoint)p;
@end

@interface CardTransitionManager : NSObject <UIViewControllerAnimatedTransitioning, UIViewControllerInteractiveTransitioning>
@property (nonatomic) id <CardTransitionManagerDelegate> delegate;
@property (nonatomic) BOOL hasActiveInteraction;
@property (nonatomic) UINavigationControllerOperation navigationOperation;
@property (nonatomic) UICollectionView *collectionView;

- (instancetype)initWithCollectionView:(UICollectionView *)collectionView;

@end
