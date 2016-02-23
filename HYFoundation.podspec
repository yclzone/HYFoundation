#
# Be sure to run `pod lib lint HYFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HYFoundation"
  s.version          = "0.2.1"
  s.summary          = "HYFoundation is a collection of common used categories of Foundation."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
HYFoundation is a collection of common used categories of Foundation.Such as NSObject, NSString, NSArray, NSMutableAttributeString and so on;
                       DESC

  s.homepage         = "https://github.com/yclzone/HYFoundation"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "yclzone" => "yclzone@gmail.com" }
  s.source           = { :git => "https://github.com/yclzone/HYFoundation.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/yclzone'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'HYFoundation' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
