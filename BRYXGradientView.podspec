Pod::Spec.new do |s|
    s.name             = "BRYXGradientView"
    s.version          = "0.1.0"
    s.summary          = "A lightweight gradient view for iOS 7+, written in Swift, with support for Auto Layout and Interface Builder."
    s.homepage         = "https://github.com/bryx-inc/BRYXGradientView"
    s.license          = 'MIT'
    s.author           = { "Adam Binsz" => "adam@adambinsz.com" }
    s.source           = { :git => "https://github.com/bryx-inc/BRYXGradientView.git", :tag => s.version.to_s }

    s.platform     = :ios, '8.0'
    s.requires_arc = true

    s.source_files = 'Pod/Classes/'
    s.resource_bundles = {
    'BRYXGradientView' => ['Pod/Assets/*.png']
    }
end