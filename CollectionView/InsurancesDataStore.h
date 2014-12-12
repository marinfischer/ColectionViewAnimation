//
//  InsurancesDataStore.h
//  CollectionView
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InsurancesDataStore : NSObject
@property (strong, nonatomic) NSMutableArray *healthUsersArray;
@property (strong, nonatomic) NSArray *allInsuranceTypesArray;
@property (strong, nonatomic) NSDictionary *insuranceTypesDictionary;

+ (InsurancesDataStore *)sharedInstance;

@end
