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
  s.version          = "0.1.0"
  s.summary          = "A short description of google-cloud-endpoints-client."
  s.description      = <<-DESC
                       An optional longer description of google-cloud-endpoints-client

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/google-cloud-endpoints-client"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "rockwotj" => "rockwotj@gmail.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/google-cloud-endpoints-client.git", :tag => s.version.to_s }
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
