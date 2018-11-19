Pod::Spec.new do |s|
  s.name                    = 'UIDeviceIcon'
  s.version                 = '1.0.1'
  s.summary                 = 'A µframework to provide an icon to represent the device model.'
  s.description             = <<-DESC
                                A µframework to detect and provide an icon to represent the device model through an extension of UIDevice. Also detects the simulator and the device model it is simulating.
                              DESC
  s.homepage                = 'https://github.com/theoriginalbit/UIDeviceIcon'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'theoriginalbit' => 'theoriginalbit@gmail.com' }
  s.source                  = { :git => 'https://github.com/theoriginalbit/UIDeviceIcon.git', :tag => s.version.to_s }

  s.ios.deployment_target   = '8.0'

  s.source_files            = 'UIDeviceIcon/Classes/**/*'
  s.swift_version           = '4.2'
  
  s.dependency              'UIDeviceModel', '~> 1.0'
end
