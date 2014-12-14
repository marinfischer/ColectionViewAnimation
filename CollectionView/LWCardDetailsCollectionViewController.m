//
//  LWCardDetailsCollectionViewController.m
//  CollectionView
//
//  Created by Marin Fischer on 12/10/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//
//use uidynamics for bounce affect
//on master do fade in and fade out. when you hit back call fade in- run a dispatch after and set in at .1 or .2 then do fade
//

#import "LWCardDetailsCollectionViewController.h"
#import "CardCollectionViewCell.h"
#import "LWInsurancesModel.h"
#import "Theme.h"

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
    [cardCell setBackgroundColor:[[Theme sharedTheme] mintGreen]];
    [cardCell.imageView setImage:[UIImage imageNamed:card.userImage]];
//    [cardCell.backgroundImageView setImage:[UIImage imageNamed:card.backgroundImage]];
//    [cardCell.backgroundImageView setClipsToBounds:true];
    [cardCell.insTypeName setText:card.name];
    [cardCell.insTypeName setTextColor:[UIColor whiteColor]];
    if ([card.type isEqualToString:@"Health"]) {
        [cardCell setBackgroundColor:[[Theme sharedTheme] blue]];
        
    }else if ([card.type isEqualToString:@"Vision"]) {
        [cardCell setBackgroundColor:[[Theme sharedTheme] mintGreen]];
        
    }else if ([card.type isEqualToString:@"Dental"]) {
        [cardCell setBackgroundColor:[[Theme sharedTheme] yellow]];
        
    }else if ([card.type isEqualToString:@"Auto"]) {
        [cardCell setBackgroundColor:[[Theme sharedTheme] orange]];
        
    }else if ([card.type isEqualToString:@"Life"]) {
        [cardCell setBackgroundColor:[[Theme sharedTheme] red]];
        
    }else if ([card.type isEqualToString:@"Home"]) {
        [cardCell setBackgroundColor:[[Theme sharedTheme] purple]];
    }

    
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
        // Navigation button was pressed. Do some stuff
        //check in view will disappear check view controller and check the view controller if its going back to master do transition (in a block) if not mast than push the new
        [self.previousViewControllerReference setCardLayoutView:self.cardLayoutView];
            CATransition* transition = [CATransition animation];
        
            transition.duration = 0.1;
            transition.type = kCATransitionFade;
        
            [[self navigationController].view.layer addAnimation:transition forKey:kCATransition];
    }
    [super viewWillDisappear:animated];
}

@end
