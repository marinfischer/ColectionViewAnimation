//
//  LWAutoUsersModel.h
//  LifeWallet
//
//  Created by Marin Fischer on 11/26/14.
//  Copyright (c) 2014 LifeWallet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWAutoUsersModel : NSObject
@property (strong, nonatomic) NSString *yearMakeModel;
@property (strong, nonatomic) NSString *policyNumber;
@property (strong, nonatomic) NSString *vin;
@property (strong, nonatomic) NSString *effectiveDate;
@property (strong, nonatomic) NSString *renewalDate;
@property (strong, nonatomic) NSString *brand;
@property (strong, nonatomic) NSString *image;

@end
