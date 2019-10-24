Pod::Spec.new do |spec|

  spec.name         = "AbloomySDK"
  spec.version      = "1.0.1" #此处要与上传到Git的tag一致
  spec.summary      = "This is my test pod." #摘要，随便写
  spec.homepage     = "https://github.com/liuqing520it" #主页，随便写
  spec.license      = "MIT" #许可证类型，我只会MIT，其它的请自行Google
  spec.author       = { "qingliu" => "330663384@qq.com" } #作者和邮箱地址，随便写

  spec.platform     = :ios, "8.0" #支持的平台，以及支持的最低系统版本
  spec.source       = { :git => "https://github.com/liuqing520it/SDKTrunk.git", :tag => "#{spec.version}" }
  spec.source_files = "AbloomySDK.framework/Headers/*.{h}" #001号 坑

  #spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' } #002号 坑
  spec.ios.vendored_frameworks = 'AbloomySDK.framework' #003号 坑
  spec.requires_arc = true #是否需要ARC

  #spec.dependency "AFNetworking", "3.2.1" #依赖三方的库，如果想要添加多个依赖，不可以用逗号隔开，应该依赖一个写一句。
end