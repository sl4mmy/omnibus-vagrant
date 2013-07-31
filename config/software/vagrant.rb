name "vagrant"
version "v1.2.7"

dependency "ruby"
dependency "rubygems"
dependency "bundler"

source :git => "git://github.com/mitchellh/vagrant.git"

relative_path "vagrant"

build do
  bundle "install"
  bundle "exec rake build"
  gem "install pkg/vagrant-#{version.sub(/^v/, "")}.gem --no-rdoc --no-ri"
end
