DCSocial
======================

Facebook/Twitter/LINEへの画像/テキスト/URLの投稿をシンプルな記述で実行する「DCSocial」クラスです。

このクラスを使用する際は「Social」フレームワークが必要になります。

##使用方法

###Facebookへの画像/テキスト/URLの投稿

```objective-c
[DCSocial postToFacebook:self text:POST_TEXT imageName:POST_IMG_NAME url:POST_URL];
```

###Twitterへの画像/テキスト/URLの投稿

```objective-c
[DCSocial postToTwitter:self text:POST_TEXT imageName:POST_IMG_NAME url:POST_URL];
```

###LINEへの JPEG画像投稿

```objective-c
typedef NS_ENUM(NSUInteger, imageExtId) {
    JPEG = 0,
    PNG  = 1
};

[DCSocial postImageToLine:POST_IMG_NAME imageType:JPEG];
```

###LINEへの PNG画像投稿

```objective-c
typedef NS_ENUM(NSUInteger, imageExtId) {
    JPEG = 0,
    PNG  = 1
};

[DCSocial postImageToLine:POST_IMG_NAME imageType:PNG];
```

###メール/Twitter/Facebook共有

```objective-c
[DCSocial socialShare:self shareText:POST_TEXT shareImage:[UIImage imageNamed:POST_IMG_NAME]];
```
