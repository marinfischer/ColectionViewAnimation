//
//  AllUsersModel.h
//  LifeWallet
//
//  Created by Marin Fischer on 11/25/14.
//  Copyright (c) 2014 LifeWallet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWHealthDentalVisionUsersModel : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *memberID;
@property (strong, nonatomic) NSString *groupID;
@property (strong, nonatomic) NSString *planType;
@property (strong, nonatomic) NSString *effectiveDate;
@property (strong, nonatomic) NSString *brand;

@property (strong, nonatomic) NSString *imageURL;
@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) NSString *id;

@end
