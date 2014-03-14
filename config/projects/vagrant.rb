name "vagrant"
maintainer "Kent R. Spillner"
homepage "vagrantup.com"

replaces        "vagrant"
install_path    "/opt/vagrant"
build_version   "1.5.1"
build_iteration 1

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
