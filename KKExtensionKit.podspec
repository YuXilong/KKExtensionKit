#
# Be sure to run `pod lib lint KKExtensionKit.podspec' to ensure this is a
# valid spec before submitting.

Pod::Spec.new do |s|
  s.name             = 'KKExtensionKit'
  s.version          = '1.0.2'
  s.summary          = 'iOS常用工具类扩展.'
  s.homepage         = 'https://github.com/YuXilong'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JackYu' => '305758560@qq.com' }
  s.source           = { :git => 'https://github.com/YuXilong/KKExtensionKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  
  s.source_files = 'KKExtensionKit/**/*.{h,m}'
  s.public_header_files = 'KKExtensionKit/**/*.{h}'
  s.prefix_header_contents = '#import <CocoaLumberjack/CocoaLumberjack.h>'
  

  s.frameworks = 'UIKit'
  s.dependency 'MBProgressHUD', '~> 1.1.0'
  s.dependency 'SVProgressHUD'
  s.dependency 'CocoaLumberjack'
end
