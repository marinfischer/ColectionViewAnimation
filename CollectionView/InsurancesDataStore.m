//
//  InsurancesDataStore.m
//  CollectionView
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import "InsurancesDataStore.h"

@implementation InsurancesDataStore
+ (InsurancesDataStore *)sharedInstance {
    static InsurancesDataStore *sharedInstance = nil;
    if (!sharedInstance) {
        sharedInstance = [[super allocWithZone:nil] init];
    }
    return sharedInstance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

@end
