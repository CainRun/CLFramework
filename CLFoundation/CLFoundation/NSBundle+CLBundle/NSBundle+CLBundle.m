//
//  NSBundle+CLBundle.m
//  CLFoundation
//
//  Created by Cain on 2017/6/8.
//  Copyright © 2017年 Cain. All rights reserved.
//

#import "NSBundle+CLBundle.h"

@implementation NSBundle (CLBundle)

+ (NSString *)cl_getBundleDisplayName {
    
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
}

+ (NSString *)cl_getBundleShortVersionString {
    
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)cl_getBundleVersion {
    
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

+ (NSString *)cl_getBundleIdentifier {
    
    return [[NSBundle mainBundle] bundleIdentifier];
}

@end
