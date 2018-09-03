#
# Be sure to run `pod lib lint libEd25519Blake2b.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libEd25519Blake2b'
  s.version          = '0.1.0'
  s.summary          = 'A short description of libEd25519Blake2b.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/vitelabs/libEd25519Blake2b-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Stone' => 'shitong@vite.org' }
  s.source           = { :git => 'https://github.com/vitelabs/libEd25519Blake2b-ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'libEd25519Blake2b/Classes/**/*.{swift,c,h,cpp,hpp}'
  s.preserve_paths = 'libEd25519Blake2b/Classes/Clib/module.modulemap'
  s.pod_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/libEd25519Blake2b/Classes/Clib',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ED25519_CUSTOMHASH ED25519_CUSTOMRNG',
  }

  s.private_header_files = 'libEd25519Blake2b/Classes/Clib/*.{h,hpp}'
  s.public_header_files = 'libEd25519Blake2b/Classes/ed25519-public.h'

  # s.resource_bundles = {
  #   'libEd25519Blake2b' => ['libEd25519Blake2b/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
