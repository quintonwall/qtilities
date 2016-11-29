#
# Be sure to run `pod lib lint qtilities.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'qtilities'
  s.version          = '0.1.0'
  s.summary          = 'A collection of crazy helpful utilities for working with Salesforce from iOS, Apple TV, and Mac apps.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A collection of crazy helpful utilities for working with Salesforce from iOS, Apple TV, and Mac apps
		DESC

    s.description  = <<-DESC
    "A collection of crazy helpful utilities for working with Salesforce from iOS, Apple TV, and Mac apps"
                   DESC

  s.homepage         = 'https://github.com/quintonwall/qtilities'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'GPL-3.0', :file => 'LICENSE' }
  s.author           = { 'Quinton Wall' => 'quinton_wall@hotmail.com' }
  s.source           = { :git => 'https://github.com/quintonwall/qtilities.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/quintonwall'

  s.ios.deployment_target = '9.3'

  s.source_files = 'qtilities/Classes/**/*'

  # s.resource_bundles = {
  #   'qtilities' => ['qtilities/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'SwiftyJSON', '~> 2.0'
   s.dependency 'SwiftlySalesforce'
   s.dependency 'SDWebImage'
end
