name "vagrant"
version "v1.2.4"

dependency "ruby"
dependency "rubygems"
dependency "bundler"

source :git => "git://github.com/mitchellh/vagrant.git"

relative_path "vagrant"

build do
  bundle "install"
  bundle "exec rake build"
  gem "install pkg/vagrant-1.2.4.gem --no-rdoc --no-ri"
end
