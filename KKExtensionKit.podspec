#
# Be sure to run `pod lib lint KKExtensionKit.podspec' to ensure this is a
# valid spec before submitting.

Pod::Spec.new do |s|
  s.name             = 'KKExtensionKit'
  s.version          = '1.0.3'
  s.summary          = 'iOS常用工具类扩展.'
  s.homepage         = 'https://github.com/YuXilong'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JackYu' => '305758560@qq.com' }
  s.source           = { :git => 'https://github.com/YuXilong/KKExtensionKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.public_header_files = 'KKExtensionKit/KKExtensionKit.h'
  s.source_files = 'KKExtensionKit/KKExtensionKit.h'
  s.default_subspec = 'Core'

  s.subspec 'Core' do |c|
    c.dependency 'KKExtensionKit/Base'
    c.dependency 'KKExtensionKit/Texture+Extension'
    c.dependency 'KKExtensionKit/CocoaLumberjack+Extension'
    c.dependency 'KKExtensionKit/MProgressHUD+Extension'
    c.dependency 'KKExtensionKit/SVProgressHUD+Extension'
  end

  # 基础扩展
  s.subspec 'Base' do |ba|  
    ba.source_files = 'KKExtensionKit/Base/**/*.{h,m}'
    ba.public_header_files = 'KKExtensionKit/Base/**/*.{h}'
    ba.frameworks = 'UIKit'
    
  end

  # Texture扩展
  s.subspec 'Texture+Extension' do |te|
    te.public_header_files = [
      'KKExtensionKit/Texture+Extension/*.h',
      'KKExtensionKit/Texture+Extension/Layout/*.h',
      'KKExtensionKit/Texture+Extension/Reload/*.h',
      'KKExtensionKit/Texture+Extension/NetworkImageNode/*.h'
    ]
    te.source_files = [
      'KKExtensionKit/Texture+Extension/*.{h,m}',
      'KKExtensionKit/Texture+Extension/Layout/*.{h,m}',
      'KKExtensionKit/Texture+Extension/Reload/*.{h,m}',
      'KKExtensionKit/Texture+Extension/NetworkImageNode/*.{h,m}'
    ]
    te.dependency 'Texture/Core'
    te.dependency 'SDWebImage'
  end

  # CocoaLumberjack日志扩展
  s.subspec 'CocoaLumberjack+Extension' do |co|
    co.public_header_files = 'KKExtensionKit/CocoaLumberjack+Extension/*.h'
    co.source_files = 'KKExtensionKit/CocoaLumberjack+Extension/*.{h,m}'
    co.dependency 'CocoaLumberjack'
  end

  # MBProgressHUD扩展
  s.subspec 'MProgressHUD+Extension' do |mb|
    mb.public_header_files = 'KKExtensionKit/MProgressHUD+Extension/*.h'
    mb.source_files = 'KKExtensionKit/MProgressHUD+Extension/*.{h,m}'
    mb.dependency 'MBProgressHUD', '~> 1.1.0'
  end

  # SVProgressHUD扩展
  s.subspec 'SVProgressHUD+Extension' do |sv|
    sv.public_header_files = 'KKExtensionKit/SVProgressHUD+Extension/*.h'
    sv.source_files = 'KKExtensionKit/SVProgressHUD+Extension/*.{h,m}'
    sv.dependency 'SVProgressHUD'
  end

end
