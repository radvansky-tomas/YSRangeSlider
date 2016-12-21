Pod::Spec.new do |s|
  s.name     = 'YSRangeSlider'
  s.version  = '3.2.1'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'Configurable range slider for iOS (IBInspectable and IBDesignable)'
  s.homepage = 'https://github.com/YardiSystems/YSRangeSlider'
  s.source   = { :git => 'https://github.com/YardiSystems/YSRangeSlider.git',
                 :tag => "#{s.version}" }
  s.authors  = { 'Laurentiu Ungur' => 'laurentiu.ungur@yardi.com' }
  s.requires_arc = true
  s.platform     = :ios, "8.0"
  s.source_files = 'YSRangeSlider/*.{swift}'
  s.preserve_paths = 'README*'
  s.xcconfig = { 'SWIFT_VERSION' => '3.0' }
  
end
