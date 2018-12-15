#
# Be sure to run `pod lib lint SwiftBaseBootstrap.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftBaseBootstrap'
  s.version          = '0.1.2'
  s.summary          = 'Swift Base Bootstrap Framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A swift base bootstrap framework for some useful extentions.
                       DESC

  s.homepage         = 'https://github.com/dragonetail/SwiftBaseBootstrap'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dragonetail' => 'dragonetail@gmail.com' }
  s.source           = { :git => 'https://github.com/dragonetail/SwiftBaseBootstrap.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'
  s.swift_version = '4.2'

  s.source_files = 'Source/**/*'

  # s.resource_bundles = {
  #   'SwiftPagingTabView' => ['SwiftPagingTabView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'PureLayout', '~> 3.1.4'
end
