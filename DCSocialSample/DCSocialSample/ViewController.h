//
//  ViewController.h
//  DCSocialSample
//
//  Created by 廣川政樹 on 2013/06/28.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DCSocial.h"

#define POST_TEXT     @"via Dolice Alternative Design"
#define POST_IMG_NAME @"Pandora_640_1136.jpg"
#define POST_URL      @"http://dolice.net/mb/"

@interface ViewController : UIViewController

- (IBAction)postToFacebook:(id)sender;
- (IBAction)postToTwitter:(id)sender;
- (IBAction)postToLine:(id)sender;

@end
