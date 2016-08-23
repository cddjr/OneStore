Pod::Spec.new do |s|
  s.name             = 'OneStore'
  s.version          = '0.1.0'
  s.summary          = 'One value store proxy for NSUserDefaults'
  s.homepage         = 'https://github.com/muukii/OneStore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'muukii' => 'm@muukii.me' }
  s.source           = { :git => 'https://github.com/muukii/OneStore.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/muukii0803'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.2'

  s.source_files = 'OneStore/Classes/**/*'
end