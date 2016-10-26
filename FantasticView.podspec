Pod::Spec.new do |s|
  s.name            = 'FantasticView'
  s.version         = '0.1.0'
  s.summary         = 'By far teh most fantastic view I have seen in my entire life.'

  s.description     = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                      DESC

  s.homepage        = 'https://github.com/djngoma/FantasticView'
  s.license         = { :type => 'MIT', :file => 'LICENSE' }
  s.author          = { 'Daliso Ngoma' => 'daliso@djngoma.com' }
  s.source          = { :git => 'https://github.com/djngoma/FantasticView.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '10.1'
  s.source_files = 'FantasticView/FantasticView.swift'
  #'FantasticView/*.swift'        -> All Swift files only
  #'FantasticView/*'              -> All files
  #'FantasticView/*.{swift,plist} -> All Swift and plist files only

end
