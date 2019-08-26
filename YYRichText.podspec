

Pod::Spec.new do |s|


  s.name         = "YYRichText"
  s.version      = "1.0.0"
  s.summary      = "A basic library for rich text"
 
  s.homepage     = "https://github.com/dalianmengzi/YYRichtext"
  s.license      = { :type => "MIT" }


  s.author      = { "惊蛰" => "907936564@qq.com" }

  s.ios.deployment_target = "8.0"

  s.requires_arc = true

  s.swift_version = "5.0"


  s.source  = { :git => "https://github.com/dalianmengzi/YYRichtext.git", :tag => s.version }
  s.source_files  = "YYRichText", "YYRichText/**/*.{h,m}"





end
