//
//  LWCardDetailsCollectionViewController.h
//  CollectionView
//
//  Created by Marin Fischer on 12/10/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardsCollectionViewController.h"

@interface LWCardDetailsCollectionViewController : UICollectionViewController
@property(nonatomic, assign) BOOL useLayoutToLayoutNavigationTransitions;
@property (nonatomic, strong) NSArray *data;
@property (nonatomic, strong) CardsCollectionViewController *previousViewControllerReference;
@end
