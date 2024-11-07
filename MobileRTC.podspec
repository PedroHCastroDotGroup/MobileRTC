Pod::Spec.new do |s|
    s.name         = 'MobileRTC'
    s.version      = '1.0.0'
    s.summary      = 'Integração do MobileRTC para iOS.'
    s.description  = 'MobileRTC SDK fornece funcionalidade de reunião de vídeo e áudio.'
    s.homepage     = 'https://seusite.com'
    s.license      = { :type => 'MIT' }
    s.author       = { 'Seu Nome' => 'seuemail@exemplo.com' }
  
    s.platform     = :ios, '12.0'

    # s.source       = { :git => "https://github.com/PedroHCastroDotGroup/ZoomSDK.git", :tag => "v#{s.version}" }
    s.source       = { :git => 'https://falsosource.com/falso.git', :tag => s.version.to_s }


  
    # Declara o .xcframework para diferentes arquiteturas
    s.vendored_frameworks = 'MobileRTC.xcframework'
  
    # Assegura que o CocoaPods use as configurações corretas de compilação
    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  
    s.swift_version = '5.0'
  end
  