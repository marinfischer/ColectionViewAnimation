//
//  Theme.m
//  CollectionView
//
//  Created by Marin Fischer on 12/14/14.
//  Copyright (c) 2014 TheCodeBoutique. All rights reserved.
//

#import "Theme.h"

@implementation Theme
+(Theme *)sharedTheme
{
    static Theme *sharedTheme = nil;
    if (!sharedTheme)
        sharedTheme = [[super allocWithZone:nil] init];
    
    return sharedTheme;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedTheme];
}

-(UIColor *)colorWithHexString:(NSString*)hex withOpacity:(CGFloat)opacity;
{
    
    //added in removal of # if passed into the string
    hex = [hex stringByReplacingOccurrencesOfString:@"#" withString:@"" options:0 range:NSMakeRange(0, [hex length])];
    
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor grayColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return  [UIColor grayColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha: opacity];
}

-(UIColor *)mintGreen
{
    return [[Theme sharedTheme] colorWithHexString:@"20B2AA" withOpacity:1.0f];
}

-(UIColor *)purple
{
    return [[Theme sharedTheme] colorWithHexString:@"9932CC" withOpacity:1.0f];
}

-(UIColor *)red
{
    return [[Theme sharedTheme] colorWithHexString:@"DC143C" withOpacity:1.0f];
}

-(UIColor *)blue
{
    return [[Theme sharedTheme] colorWithHexString:@"007FFF" withOpacity:1.0f];
}

-(UIColor *)orange {
    return [[Theme sharedTheme] colorWithHexString:@"EC5800" withOpacity:1.0f];
}

- (UIColor *)yellow {
    return [[Theme sharedTheme] colorWithHexString:@"FFC40C" withOpacity:1.0f];
}

@end
