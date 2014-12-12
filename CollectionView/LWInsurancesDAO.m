//
//  LWInsurancesDAO.m
//  CollectionView
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import "LWInsurancesDAO.h"
#import "InsurancesDataStore.h"
#import "LWInsurancesModel.h"
#import "NSObject+JTObjectMapping.h"

@implementation LWInsurancesDAO

- (void)loadJSONFile {
    NSError *deserializingError = nil;
    NSURL *localFileURL = [[NSBundle mainBundle] URLForResource:@"insurances" withExtension:@"json"];
    NSData *contentOfLocalJSONFile = [NSData dataWithContentsOfURL:localFileURL];
    id object = [NSJSONSerialization JSONObjectWithData:contentOfLocalJSONFile
                                                options:kNilOptions
                                                  error:&deserializingError];
    //keys are insurance types
    NSMutableArray *insurancesJsonArray = [object valueForKey:@"insurances"];
    NSMutableDictionary *insurancesDictionary = [NSMutableDictionary new];
    
    NSMutableArray *allInsurancesArray = [NSMutableArray new];

    
    [insurancesJsonArray enumerateObjectsUsingBlock:^(NSDictionary *insJSONDict, NSUInteger idx, BOOL *stop) {
                LWInsurancesModel *insurancesModel = [LWInsurancesModel objectFromJSONObject:insJSONDict mapping:nil];
        
        if (![insurancesDictionary valueForKey:[insurancesModel valueForKey:@"type"]]) {
            [insurancesDictionary setValue:[NSMutableArray new] forKey:[insurancesModel valueForKey:@"type"]];
        }
        
        [allInsurancesArray addObject:insurancesModel];
        
        
        //puts objects into and array sorted by insurance type
        NSMutableArray *currentInsuranceArray = [insurancesDictionary valueForKey:[insurancesModel valueForKey:@"type"]];
        [currentInsuranceArray addObject:insurancesModel];
        
        
        
    }];
    [[InsurancesDataStore sharedInstance] setInsuranceTypesDictionary:insurancesDictionary];
    [[InsurancesDataStore sharedInstance] setAllInsuranceTypesArray:allInsurancesArray];
}


@end
