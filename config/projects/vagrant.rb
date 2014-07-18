name "vagrant"
maintainer "Kent R. Spillner"
homepage "vagrantup.com"

install_path    "/opt/vagrant"
build_version   "1.6.3"

# creates required build directories
dependency "preparation"

# Require Ruby v2.1.1
override :ruby, :version => "2.1.1"

# vagrant dependencies/components
dependency "vagrant"
dependency "vagrant-wrapper"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
