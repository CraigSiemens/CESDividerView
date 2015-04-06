#
# Be sure to run `pod lib lint CESDividerView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CESDividerView"
  s.version          = "1.0.1"
  s.summary          = "Create a one pixel line on any device"
  s.description      = <<-DESC
                       Simplifies the creation of a one pixel line on any device.

                       * Works with or without autolayout.
                       * Can be created programmatically or in storyboards/xibs
                       DESC
  s.homepage         = "https://github.com/CraigSiemens/CESDividerView"
  s.license          = 'MIT'
  s.author           = { "Craig Siemens" => "siemens.craig@gmail.com" }
  s.source           = { :git => "https://github.com/CraigSiemens/CESDividerView.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end
