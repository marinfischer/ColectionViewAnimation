//
//  Theme.h
//  CollectionView
//
//  Created by Marin Fischer on 12/14/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface Theme : NSObject
+ (Theme *)sharedTheme;
- (UIColor *)colorWithHexString:(NSString*)hex withOpacity:(CGFloat)opacity;
-(UIColor *)mintGreen;
-(UIColor *)purple;
-(UIColor *)red;
-(UIColor *)blue;
-(UIColor *)orange;
- (UIColor *)yellow;

@end
