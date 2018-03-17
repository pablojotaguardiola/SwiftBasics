Pod::Spec.new do |s|
  s.name             = 'SwiftBasics'
  s.version          = '0.1.0'
  s.summary          = 'Swift basic classes to start an APP.'
 
  s.description      = <<-DESC
  Swift basic classes to start an APP.
                       DESC
 
  s.homepage         = 'https://github.com/pablojotaguardiola/SwiftBasics'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pablo Guardiola' => 'pablojotaguardiola@gmail.com' }
  s.source           = { :git => 'https://github.com/pablojotaguardiola/SwiftBasics.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'Source/**/*.swift'
  
  s.dependency 'Alamofire'
  s.dependency 'IQKeyboardManagerSwift'
  s.dependency 'ReactiveSwift'
  s.dependency 'DeviceKit', '~> 1.3.0'
 
end