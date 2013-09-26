DCSocial
======================

Facebook/Twitter/LINEへの画像/テキスト/URLの投稿をシンプルな記述で実行する「DCSocial」クラスです。

このクラスを使用する際は「Social」フレームワークが必要になります。

##使用方法

###Facebookへの画像/テキスト/URLの投稿

```objective-c
[DCSocial postToFacebook:self
                    text:POST_TEXT
               imageName:POST_IMG_NAME
                     url:POST_URL];
```

###Twitterへの画像/テキスト/URLの投稿

```objective-c
[DCSocial postToTwitter:self
                   text:POST_TEXT
              imageName:POST_IMG_NAME
                    url:POST_URL];
```

###LINEへの画像投稿

```objective-c
[DCSocial postToLine:POST_IMG_NAME];
```
