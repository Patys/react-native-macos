# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

require "json"

package = JSON.parse(File.read(File.join(__dir__, "..", "..", "package.json")))
version = package['version']

source = { :git => 'https://github.com/facebook/react-native.git' }
if version == '1000.0.0'
  # This is an unpublished version, use the latest commit hash of the react-native repo, which we’re presumably in.
  source[:commit] = `git rev-parse HEAD`.strip
else
  source[:tag] = "v#{version}"
end

Pod::Spec.new do |s|
  s.name                   = "React-RCTCameraRoll"
  s.version                = version
  s.summary                = "An API that provides access to the local camera roll or photo library."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.documentation_url      = "https://facebook.github.io/react-native/docs/cameraroll"
  s.license                = package["license"]
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2", :osx => "10.14" } # TODO(macOS GH#214)
  s.source                 = source
  s.source_files           = "*.{h,m}"
  s.preserve_paths         = "package.json", "LICENSE", "LICENSE-docs"
  s.header_dir             = "React"

  s.dependency "React-Core", version
  s.dependency "React-RCTImage", version

  s.osx.exclude_files      = "RCTImagePickerManager.*", "RCTAssetsLibraryRequestHandler.*" # TODO(macOS GH#214)

end