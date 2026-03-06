#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'record_mp3_plus'
  s.version          = '1.0.0'
  s.summary          = 'A new Flutter plugin.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*.{h,m,swift}'
  s.public_header_files = 'Classes/**/*.h'
  s.exclude_files = 'Classes/Fat-Lame/**/*'
  s.dependency 'Flutter'
  s.swift_version = '5.0'
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'YES', 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'HEADER_SEARCH_PATHS[sdk=iphoneos*]' => '$(inherited) "${PODS_TARGET_SRCROOT}/Classes/Fat-Lame/libmp3lame.xcframework/ios-arm64/"',
    'HEADER_SEARCH_PATHS[sdk=iphonesimulator*]' => '$(inherited) "${PODS_TARGET_SRCROOT}/Classes/Fat-Lame/libmp3lame.xcframework/ios-arm64_x86_64-simulator/"',
    'LIBRARY_SEARCH_PATHS[sdk=iphoneos*]' => '$(inherited) "${PODS_TARGET_SRCROOT}/Classes/Fat-Lame/libmp3lame.xcframework/ios-arm64/"',
    'LIBRARY_SEARCH_PATHS[sdk=iphonesimulator*]' => '$(inherited) "${PODS_TARGET_SRCROOT}/Classes/Fat-Lame/libmp3lame.xcframework/ios-arm64_x86_64-simulator/"'
  }

  s.user_target_xcconfig = {
    'LIBRARY_SEARCH_PATHS[sdk=iphoneos*]' => '$(inherited) "${PODS_ROOT}/../.symlinks/plugins/record_mp3_plus/ios/Classes/Fat-Lame/libmp3lame.xcframework/ios-arm64/"',
    'LIBRARY_SEARCH_PATHS[sdk=iphonesimulator*]' => '$(inherited) "${PODS_ROOT}/../.symlinks/plugins/record_mp3_plus/ios/Classes/Fat-Lame/libmp3lame.xcframework/ios-arm64_x86_64-simulator/"'
  }

  s.ios.deployment_target = '12.0'
  s.frameworks = 'AVFoundation'
  s.libraries = 'mp3lame'
  s.vendored_frameworks = "Classes/Fat-Lame/libmp3lame.xcframework"
end

