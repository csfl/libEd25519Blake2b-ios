#
# Be sure to run `pod lib lint libEd25519Blake2b.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libEd25519Blake2b'
  s.version          = '0.0.5'
  s.summary          = 'ED25519 with Blake2b.'
  s.homepage         = 'https://github.com/vitelabs/libEd25519Blake2b-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Stone' => 'shitong@vite.org' }
  s.source           = { :git => 'https://github.com/vitelabs/libEd25519Blake2b-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.1'

  s.source_files = 'libEd25519Blake2b/Classes/**/*.{swift,c,h,cpp,hpp}'
  s.preserve_paths = 'libEd25519Blake2b/Classes/Clib/module.modulemap'
  s.private_header_files = 'libEd25519Blake2b/Classes/Clib/*.{h,hpp}'
  s.public_header_files = 'libEd25519Blake2b/Classes/{ed25519,blake2}-public.h'

  s.pod_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/libEd25519Blake2b/Classes/Clib',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ED25519_CUSTOMHASH ED25519_CUSTOMRNG',
  }
  s.xcconfig = {
      'VALID_ARCHS' =>  'arm64 x86_64',
  }


end
