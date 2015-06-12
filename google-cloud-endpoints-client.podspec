Pod::Spec.new do |s|
  s.name             = "google-cloud-endpoints-client"
  s.version          = "0.0.450"
  s.summary          = "Google Cloud Endpoints library wrapped in a Pod. I DON'T OWN OR MAINTAIN THIS CODE'"
  s.description      = <<-DESC
                       The Google Cloud Endpoints iOS library copied from svn and put in a cocoapod because
                       I am tried of copying code in from the project
                       DESC
  s.homepage         = "https://github.com/rockwotj/google-cloud-endpoints-client"

  s.license          = 'MIT'
  s.author           = { "rockwotj" => "rockwotj@gmail.com" }
  s.source           = { :git => "https://github.com/rockwotj/google-cloud-endpoints-client.git", :tag => s.version.to_s }


  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'google-cloud-endpoints-client' => ['Pod/Assets/*.png']
  }
  s.compiler_flags = '-fno-objc-arc'
end
