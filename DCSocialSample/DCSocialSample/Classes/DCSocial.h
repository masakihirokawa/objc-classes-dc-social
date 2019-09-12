//
//  DCSocial.h
//
//  Created by Masaki Hirokawa on 2013/06/28.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Social/Social.h>

@interface DCSocial : NSObject

#pragma mark - enumerator
typedef NS_ENUM(NSUInteger, imageExtId) {
    IMG_EXT_JPEG = 0,
    IMG_EXT_PNG  = 1
};

#pragma mark - public method
+ (void)postToFacebook:(id)delegate text:(NSString *)text imageName:(NSString *)imageName url:(NSString *)url;
+ (void)postToTwitter:(id)delegate text:(NSString *)text imageName:(NSString *)imageName url:(NSString *)url;
+ (void)postImageToLine:(NSString *)imageName imageType:(NSUInteger)imageType;
+ (void)postTextToLine:(NSString *)text;
+ (void)socialShare:(id)delegate shareText:(NSString *)shareText shareImage:(UIImage *)shareImage;

@end
