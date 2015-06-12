#
# Be sure to run `pod lib lint google-cloud-endpoints-client.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "google-cloud-endpoints-client"
  s.version          = "0.0.2"
  s.summary          = "Google Cloud Endpoints library wrapped in a Pod. I DON'T OWN OR MAINTAIN THIS CODE'"
  s.description      = <<-DESC
                       The Google Cloud Endpoints iOS library copied from svn and put in a cocoapod because
                       I am tried of copying code in from the project
                       DESC
  s.homepage         = "https://github.com/rockwotj/google-cloud-endpoints-client"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "rockwotj" => "rockwotj@gmail.com" }
  s.source           = { :git => "https://github.com/rockwotj/google-cloud-endpoints-client.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'google-cloud-endpoints-client' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
