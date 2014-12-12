//
//  LWInsurancesDAO.h
//  CollectionView
//
//  Created by Marin Fischer on 12/4/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWInsurancesDAO : NSObject
@property (nonatomic, strong) NSString *selectedInsuranceType;
- (void)loadJSONFile;
@end
