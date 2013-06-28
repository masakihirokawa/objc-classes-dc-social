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

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)postToFacebook:(id)sender
{
    [DCSocial postToFacebook:self
                        text:POST_TEXT
                   imageName:POST_IMG_NAME
                         url:POST_URL];
}

- (IBAction)postToTwitter:(id)sender
{
    [DCSocial postToTwitter:self
                       text:POST_TEXT
                  imageName:POST_IMG_NAME
                        url:POST_URL];
}

- (IBAction)postToLine:(id)sender
{
    [DCSocial postToLine:POST_IMG_NAME];
}

@end
