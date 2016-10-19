
Pod::Spec.new do |s|
s.name         = "QLZ_MultiPageViewController"
s.version      = "0.1"
s.summary      = "iOS Multi Page ViewController."
s.homepage     = "https://github.com/qlz130514988/QLZ_MultiPageViewController"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "qlz130514988." => "https://github.com/qlz130514988" }
s.platform = :ios, "7.0"
s.source   = { :git => 'https://github.com/qlz130514988/QLZ_MultiPageViewController.git', :tag => s.version, :submodules => true }
s.source_files  = "QLZ_MultiPageViewController/*.{h,m}"
s.frameworks = "Foundation"
s.requires_arc = true
s.dependency "QLZ_Categories", "~> 0.1.6"

end
