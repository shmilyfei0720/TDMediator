#
# Be sure to run `pod lib lint TDMediator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TDMediator'
  s.version          = '0.1.0'
  s.summary          = '业务组件消息中间件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  该组件负责业务组件间相互调用和远程调用。采用runtime机制实现发现服务，从而接触服务提供组件对中间件的依赖。
                       DESC

  s.homepage         = 'https://github.com/shmilyfei0720/TDMediator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chen' => '707357307@qq.com' }
  s.source           = { :git => 'https://github.com/shmilyfei0720/TDMediator.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TDMediator/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TDMediator' => ['TDMediator/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
