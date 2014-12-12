//
//  CardTransitionManager.m
//  CollectionView
//
//  Created by Marin Fischer on 12/10/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import "CardTransitionManager.h"
#import "CardLayoutView.h"

@interface CardTransitionManager()
@property (nonatomic) CardLayoutView *transitionLayout;
@property (nonatomic) id <UIViewControllerContextTransitioning> context;

@end

@implementation CardTransitionManager

- (instancetype)initWithCollectionView:(UICollectionView *)collectionView
{
    self = [super init];
    if (self != nil)
    {
        self.collectionView = collectionView;
    }
    return self;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {

}

//transition between card categories and individual cards
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 1.0;
}

@end
