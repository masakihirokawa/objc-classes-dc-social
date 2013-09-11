//
//  DCSocial.h
//
//  Created by Masaki Hirokawa on 2013/06/28.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Social/Social.h>

@interface DCSocial : NSObject

#pragma mark method prototype
+ (void)postToFacebook:(id)delegate text:(NSString *)text imageName:(NSString *)imageName url:(NSString *)url;
+ (void)postToTwitter:(id)delegate text:(NSString *)text imageName:(NSString *)imageName url:(NSString *)url;
+ (void)postToLine:(NSString *)imageName;
+ (void)socialShare:(id)delegate shareText:(NSString *)shareText shareImage:(UIImage *)shareImage;

@end
