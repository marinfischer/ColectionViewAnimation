//
//  LWLifeInsModel.h
//  LifeWallet
//
//  Created by mfischer on 12/2/14.
//  Copyright (c) 2014 LifeWallet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWLifeInsModel : NSObject
@property (nonatomic, strong) NSString *insured;
@property (nonatomic, strong) NSString *planType;
@property (nonatomic, strong) NSString *premiumMode;
@property (nonatomic, strong) NSString *effectiveDate;
@property (nonatomic, strong) NSString *faceAmount;
@property (nonatomic, strong) NSString *brand;
@property (nonatomic, strong) NSString *image;

@end
