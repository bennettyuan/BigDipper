#
#  Be sure to run `pod spec lint BigDipper.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name = "BigDipper"
  spec.version = "0.3.1"
  spec.summary = "A lightweight framework of VIPER architecture with Swift."
  spec.homepage = "https://github.com/bennettyuan18/BigDipper"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author = { "Bennett Yuan" => "bennettyuan18@gmail.com" }
  spec.social_media_url = "https://twitter.com/bennettyuan18"
  spec.platform = :ios, "11.0"
  spec.source = { :git => "https://github.com/bennettyuan18/BigDipper.git", :tag => spec.version.to_s }
  spec.source_files = "BigDipper"
  spec.framework = "UIKit"
  spec.requires_arc = true
end
