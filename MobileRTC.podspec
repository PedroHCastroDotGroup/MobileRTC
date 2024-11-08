Pod::Spec.new do |s|
    s.name         = "MobileRTC"
    s.version      = "1.0.1"
    s.summary      = "Integração do MobileRTC para iOS."
    s.description  = "MobileRTC SDK fornece funcionalidade de reunião de vídeo e áudio."
    s.homepage     = "https://seusite.com"
    s.license      = { :type => "MIT", :file => "LICENSE.md" }
    s.author       = { "Seu Nome" => "seuemail@exemplo.com" }
  
    s.platform     = :ios, "12.0"
    s.swift_version          = "5.0"

    s.source       = { :git => "https://github.com/PedroHCastroDotGroup/MobileRTC.git", :tag => "v#{s.version}" }
  
    # Declara o .xcframework para diferentes arquiteturas
    # s.source_files           = "MobileRTC.xcframework/**/MobileRTC.framework/Headers/**/*.{h,m}"
    # s.public_header_files    = "MobileRTC.xcframework/**/MobileRTC.framework/Headers/**/*.{h,m}"

    s.vendored_frameworks = "MobileRTC.framework/ios-arm64/Headers/**/*.{h,m}"
    s.ios.vendored_frameworks = "MobileRTC.framework/ios-arm64_x86_64-simulator/Headers/**/*.{h,m}"
    s.vendored_frameworks = "MobileRTC.framework"

    s.libraries = "z", "c++", "sqlite3"
    s.frameworks = "Foundation", "UIKit", "VideoToolbox", "CoreBluetooth", "ReplayKit", "CoreMotion"
  
    # Assegura que o CocoaPods use as configurações corretas de compilação
    s.pod_target_xcconfig = {
      "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64"
    }
  
    
  end
  