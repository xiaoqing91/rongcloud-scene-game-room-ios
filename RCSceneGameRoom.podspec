#
# Be sure to run `pod lib lint RCSceneGameRoom.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RCSceneGameRoom'
  s.version          = '0.1.0'
  s.summary          = 'Scene Game Room'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Scene Voice Room module"


  s.homepage         = 'https://github.com/rongcloud'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'johankoi' => 'johankoi@163.com' }
  s.source           = { :git => 'https://github.com/johankoi/RCSceneGameRoom.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  # Version
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.static_framework = true

  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
      'VALID_ARCHS' => 'arm64 x86_64',
      'SWIFT_COMPILATION_MODE' => 'Incremental',
      'OTHER_SWIFT_FLAGS' => '-Xfrontend -enable-dynamic-replacement-chaining',
  }

  s.source_files = 'RCSceneGameRoom/Classes/**/*'
  
  s.resource_bundles = {
    'RCSceneGameRoom' => ['RCSceneGameRoom/Assets/*.xcassets']
  }

  s.vendored_frameworks = ['RCSceneGameRoom/GameEngine/**/*.xcframework']
  
  
  s.dependency 'SnapKit'
  s.dependency 'Reusable'
  s.dependency 'Pulsator'
  s.dependency 'Kingfisher'
  
  s.dependency 'RCSceneRoom/RCSceneRoom'
  s.dependency 'RCSceneRoom/RCSceneGift'
  s.dependency 'RCSceneRoom/RCSceneMusic'
  s.dependency 'RCSceneRoom/RCSceneAnalytics'
  s.dependency 'RCSceneRoom/RCSceneRoomSetting'
  
  s.dependency 'RCVoiceRoomLib'
  
end
