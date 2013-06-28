//
//  DCSocial.h
//  DCSocialSample
//
//  Created by 廣川政樹 on 2013/06/28.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Social/Social.h>

@interface DCSocial : NSObject

+ (void)postToFacebook:(id)delegate text:(NSString *)text imageName:(NSString *)imageName url:(NSString *)url;
+ (void)postToTwitter:(id)delegate text:(NSString *)text imageName:(NSString *)imageName url:(NSString *)url;
+ (void)postToLine:(NSString *)imageName;

@end
