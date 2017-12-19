Pod::Spec.new do |s|
  s.name         = "SHPopup"
  s.version      = "1.0.0"
  s.summary      = "A framework for popup in iOS"
  s.description  = "A lightweight framework for using popup view"

  s.homepage     = "https://github.com/iamshezad/SHPopup.git"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "iamShezad" => "shezadahamed95@gmail.com" }

  s.source       = { :git => "https://github.com/iamshezad/SHPopup.git", :tag => "1.0.0" }

  s.source_files  = "SHPopup/*.{swift,h,m}",

  s.ios.deployment_target = '9.0'

 
end