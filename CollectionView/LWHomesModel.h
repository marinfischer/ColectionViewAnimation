//
//  LWHomesModel.h
//  LifeWallet
//
//  Created by mfischer on 12/2/14.
//  Copyright (c) 2014 LifeWallet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWHomesModel : NSObject
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *cityStateZip;
@property (strong, nonatomic) NSString *policyNumber;
@property (strong, nonatomic) NSString *effectiveDate;
@property (strong, nonatomic) NSString *expirationDate;
@property (strong, nonatomic) NSString *brand;
@property (strong, nonatomic) NSString *image;
@end
