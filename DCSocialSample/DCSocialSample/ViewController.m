//
//  ViewController.m
//  DCSocialSample
//
//  Created by 廣川政樹 on 2013/06/28.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

typedef NS_ENUM(NSUInteger, imageExtId) {
    JPEG = 0,
    PNG  = 1
};

- (void)viewDidLoad
{
    [super viewDidLoad];
}

// Facebookへ投稿
- (IBAction)postToFacebook:(id)sender
{
    [DCSocial postToFacebook:self text:POST_TEXT imageName:POST_IMG_NAME url:POST_URL];
}

// Twitterへ投稿
- (IBAction)postToTwitter:(id)sender
{
    [DCSocial postToTwitter:self text:POST_TEXT imageName:POST_IMG_NAME url:POST_URL];
}

// LINEへ JPEG画像投稿
- (IBAction)postImageToLine:(id)sender
{
    [DCSocial postImageToLine:POST_IMG_NAME imageType:JPEG];
}

// LINEへテキスト投稿
- (IBAction)postTextToLine:(id)sender
{
    [DCSocial postTextToLine:POST_TEXT];
}

// メール/Twitter/Facebook共有
- (IBAction)share:(id)sender
{
    [DCSocial socialShare:self shareText:POST_TEXT shareImage:[UIImage imageNamed:POST_IMG_NAME]];
}

@end
