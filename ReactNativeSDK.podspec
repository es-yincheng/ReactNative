#
# Be sure to run `pod lib lint ReactNativeSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ReactNativeSDK'
  s.version          = '0.0.1'
  s.summary          = 'This is ReactNativeSDK.'

  s.description      = <<-DESC
  ReactNativeSDK for ios project,you can use it by pod.
                       DESC

  s.homepage         = 'https://github.com/es-yincheng/ReactNativeSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yc' => 'cheng.yin@ymm56.com' }
  s.source           = { :git => 'https://github.com/es-yincheng/ReactNativeSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ReactNativeSDK/Classes/**/*'
  
  s.subspec 'React' do |ss|
    ss.vendored_frameworks = 'frameworks/React.framework' 
#    ss.xcconfig = {'ENABLE_BITCODE' => 'NO'}
#    ss.libraries = ['icucore', 'c++', 'stdc++.6', 'z']
#    ss.frameworks = ['AVFoundation', 'GLKit', 'VideoToolbox']
#    ss.dependency 'AFNetworking', '~> 2.3'
end

s.subspec 'DoubleConversion' do |ss|
  ss.vendored_frameworks = 'frameworks/DoubleConversion.framework' 
end

s.subspec 'folly' do |ss|
  ss.vendored_frameworks = 'frameworks/folly.framework' 
end

s.subspec 'glog' do |ss|
  ss.vendored_frameworks = 'frameworks/glog.framework' 
end

s.subspec 'yoga' do |ss|
  ss.vendored_frameworks = 'frameworks/yoga.framework' 
end

end
