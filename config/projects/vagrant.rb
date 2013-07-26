name "vagrant"
maintainer "Kent R. Spillner"
homepage "vagrantup.com"

replaces        "vagrant"
install_path    "/opt/vagrant"
build_version   "1.2.5"
build_iteration 1

# creates required build directories
dependency "preparation"

# vagrant dependencies/components
dependency "vagrant"
dependency "vagrant-wrapper"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
