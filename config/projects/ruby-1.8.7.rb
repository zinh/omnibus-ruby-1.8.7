#
# Copyright 2019 YOUR NAME
#
# All Rights Reserved.
#

name "ruby-1.8.7"
maintainer "Vinh Nguyen"
homepage "https://blog.monotone.dev"

# Defaults to C:/ruby-1.8.7 on Windows
# and /opt/ruby-1.8.7 on all other platforms
install_dir "#{default_root}/#{name}"
#install_dir "/home/centos/omnibus/omnibus-ruby-1.8.7/local/#{name}"
build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"
dependency "ruby-1.8.7"

#dependency "ruby-1.8.7-zlib"
# ruby-1.8.7 dependencies/components
# dependency "somedep"

exclude "**/.git"
exclude "**/bundler/git"
