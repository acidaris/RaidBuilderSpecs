Pod::Spec.new do |s|
  s.name         = "WowArmory"
  s.version      = "0.0.17"
  s.summary      = "Library to access wow armory"
  s.description  = <<-DESC
                   A library intended to connect to the WowArmory Rest Api.
                   DESC

  s.homepage     = "https://github.com/acidaris/wow_armory_ios"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Adam Greenfield" => "acidaris@gmail.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/acidaris/wow_armory_ios.git", :tag => "v#{s.version}" }
  s.source_files  = "wow_armory", "wow_armory/**/*.{h,m}"
  #s.exclude_files = "wow_armory/Exclude"

  # s.public_header_files = "Classes/**/*.h"
  #s.prefix_header_contents = '#import <MobileCoreServices/MobileCoreServices.h>', '#import <SystemConfiguration/SystemConfiguration.h>' 
  s.prefix_header_contents = <<-EOS
    #ifdef __OBJC__
      #import <Foundation/Foundation.h>
      #import <SystemConfiguration/SystemConfiguration.h>
      #import <MobileCoreServices/MobileCoreServices.h>
    #endif
  EOS

  s.frameworks = "MobileCoreServices", "SystemConfiguration"

    s.dependency "RestKit", "~> 0.24.1"

    s.dependency "PromiseKit","~> 1.5.3" 
end
