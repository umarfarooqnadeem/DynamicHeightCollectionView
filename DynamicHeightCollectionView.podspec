#
# Be sure to run `pod lib lint DynamicHeightCollectionView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DynamicHeightCollectionView'
  s.version          = '0.1.0'
  s.summary          = 'CollectionView having its height equals to its content'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
"DynamicHeightCollectionView is a CollectionView that'll have it's height automatically adjusted equals to the size of it's content. All you have to do is to change the class of your CollectionView to 'DynamicHeightCollectionView' in order to enable this feature."
                       DESC

  s.homepage         = 'https://github.com/devOmar561/DynamicHeightCollectionView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'devOmar561' => 'dev.omar561@gmail.com' }
  s.source           = { :git => 'https://github.com/devOmar561/DynamicHeightCollectionView.git', :tag => s.version.to_s }
  
  s.social_media_url = 'https://twitter.com/UmarFar75903100'

  s.ios.deployment_target = '12.1'

  s.source_files  = 'DynamicHeightCollectionView/Source/**/*'
  s.swift_version = '5.0'
  
  # s.resource_bundles = {
  #   'DynamicHeightCollectionView' => ['DynamicHeightCollectionView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
