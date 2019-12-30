#
# Be sure to run `pod lib lint ServiceDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ServiceDemo'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ServiceDemo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/SerilesJam/ServiceDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jam' => 'hxjiamiao@126.com' }
  s.source           = { :git => 'https://github.com/SerilesJam/ServiceDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.public_header_files = 'ServiceDemo/Classes/JCMediatorProtocl+ProductService.h'
  s.source_files = 'ServiceDemo/Classes/*'
  
  s.resource_bundles = {
    'ServiceDemo' => ['ServiceDemo/Assets/*.{xib,xcassets,imageset,png,json,storyboard}']
  }

  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'JCToolKit'
end
