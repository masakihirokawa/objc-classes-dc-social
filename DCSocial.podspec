Pod::Spec.new do |spec|
  spec.name = 'DCSocial'
  spec.version = '0.1.0'
  spec.summary = 'Facebook/Twitter/LINEへの画像/テキスト/URLの投稿をシンプルな記述で実行する「DCSocial」クラスです。'
  spec.homepage = 'https://github.com/masakihirokawa/objc-classes-dc-social'
  spec.license = 'Copyright (c) 2013 Dolice. All rights reserved.'
  spec.author = 'Masaki Hirokawa'
  spec.source_files = 'DCSocialSample/DCSocialSample/Classes/*.{h,m,swift}'
  spec.requires_arc = true
  spec.source = { :git => "https://github.com/masakihirokawa/objc-classes-dc-social.git", :tag => spec.version.to_s }
  spec.ios.deployment_target = '7.0'
  spec.framework  = 'Social'
end
