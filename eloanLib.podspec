
Pod::Spec.new do |s|
  s.name             = 'eloanLib'
  s.version          = '1.0.5'
  s.summary          = 'A short description of eloanLib'
  s.homepage         = 'https://github.com/lytios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '24290265@qq.com' => '24290265@qq.com' }
  s.source           = { :git => 'https://github.com/lytios/eLoanLib.git', :tag => 'v1.0.5' }


  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'eloanLib/Classes/eLoanSDK.framework'
  s.resource = 'eloanLib/Assets/eLoanBundle.bundle'
  s.dependency 'AFNetworking'
  s.dependency 'YYModel'
  s.dependency 'eHRFaceSDK'
  s.dependency 'eRelyOnLib'
  s.dependency 'eRelyOnLibFile'
  s.dependency 'eCameraLib'
  s.dependency 'NIMSDK','6.10.1'

end
