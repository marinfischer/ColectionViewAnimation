//
//  LWCardDetailsCollectionViewController.m
//  CollectionView
//
//  Created by Marin Fischer on 12/10/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import "LWCardDetailsCollectionViewController.h"
#import "CardCollectionViewCell.h"
#import "LWInsurancesModel.h"
static NSString * const reuseIdentifier = @"Cell";
@interface LWCardDetailsCollectionViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation LWCardDetailsCollectionViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self collectionView] setDelegate:self];
    [[self collectionView] setDataSource:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.view setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[CardCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//    return ;
//}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CardCollectionViewCell *cardCell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    // Configure the cell
    LWInsurancesModel *card = self.data[indexPath.item];
    [cardCell.imageView setImage:[UIImage imageNamed:card.imageURL]];
    [cardCell.backgroundImageView setImage:[UIImage imageNamed:card.backgroundImage]];
    [cardCell.backgroundImageView setClipsToBounds:true];
    [cardCell.insTypeName setText:card.type];
    [cardCell.insTypeName setTextColor:[UIColor whiteColor]];
    
    return cardCell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

-(void) viewWillDisappear:(BOOL)animated {
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound) {
//        [self.collectionView setAlpha:0.8f];
        // Navigation button was pressed. Do some stuff
//        CATransition* transition = [CATransition animation];
//        
//        transition.duration = 0.8;
//        transition.type = kCATransitionFade;
//        
//        [[self navigationController].view.layer addAnimation:transition forKey:kCATransition];
        [self.navigationController popViewControllerAnimated:NO];
    }
    [super viewWillDisappear:animated];
}

@end
