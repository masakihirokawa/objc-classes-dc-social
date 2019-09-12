//
//  DCSocial.m
//
//  Created by Masaki Hirokawa on 2013/06/28.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "DCSocial.h"

@implementation DCSocial

// Facebookへ投稿
+ (void)postToFacebook:(id)delegate text:(NSString *)text imageName:(NSString *)imageName url:(NSString *)url
{
    SLComposeViewController *slc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [slc setInitialText:text];
    [slc addImage:[UIImage imageNamed:imageName]];
    [slc addURL:[NSURL URLWithString:url]];
    [delegate presentViewController:slc animated:YES completion:nil];
}

// Twitterへ投稿
+ (void)postToTwitter:(id)delegate text:(NSString *)text imageName:(NSString *)imageName url:(NSString *)url
{
    if (@available(iOS 10.0, *)) {
        NSString *const tweetText   = [NSString stringWithFormat:@"https://twitter.com/intent/tweet?text=\%@ %@", text, url];
        NSString *const encodedText = [tweetText stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSURL    *const tweetUrl    = [NSURL URLWithString:encodedText];
        if ([[UIApplication sharedApplication] canOpenURL:tweetUrl]) {
            [[UIApplication sharedApplication] openURL:tweetUrl];
        }
    } else {
        SLComposeViewController *slc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [slc setInitialText:text];
        [slc addImage:[UIImage imageNamed:imageName]];
        [slc addURL:[NSURL URLWithString:url]];
        [delegate presentViewController:slc animated:YES completion:nil];
    }
}

// LINEへイメージ投稿
+ (void)postImageToLine:(NSString *)imageName imageType:(NSUInteger)imageType
{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    if (imageType == IMG_EXT_JPEG) {
        [pasteboard setData:UIImageJPEGRepresentation([UIImage imageNamed:imageName], 1) forPasteboardType:@"public.jpeg"];
    } else if (imageType == IMG_EXT_PNG) {
        [pasteboard setData:UIImagePNGRepresentation([UIImage imageNamed:imageName]) forPasteboardType:@"public.png"];
    }
    
    NSString *const LineUrlString = [NSString stringWithFormat:@"line://msg/image/%@", pasteboard.name];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:LineUrlString]];
}

// LINEへテキスト投稿
+ (void)postTextToLine:(NSString *)text
{
    NSString *const plainString   = text;
    NSString *const encodedString = [plainString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *const urlString     = [NSString stringWithFormat: @"line://msg/text/%@", encodedString];
    NSURL    *const url           = [NSURL URLWithString:urlString];
    [[UIApplication sharedApplication] openURL:url];
}

// シェアする
+ (void)socialShare:(id)delegate shareText:(NSString *)shareText shareImage:(UIImage *)shareImage
{
    if ([UIActivityViewController class]) {
        NSString *textToShare  = shareText;
        UIImage  *imageToShare = shareImage;
        
        NSArray *activities   = [[NSArray alloc] init];
        NSArray *itemsToShare = [[NSArray alloc] initWithObjects:textToShare, imageToShare, nil];
        
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare
                                                                                 applicationActivities:activities];
        
        activityVC.excludedActivityTypes = @[UIActivityTypePrint, UIActivityTypeCopyToPasteboard,
                                             UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll,
                                             UIActivityTypeMessage, UIActivityTypePostToWeibo];
        
        [delegate presentViewController:activityVC animated:YES completion:nil];
    }
}

@end
