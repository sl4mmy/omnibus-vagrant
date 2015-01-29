name "vagrant"
default_version "v1.7.2"

dependency "ruby"
dependency "rubygems"
dependency "bundler"

source :git => "git://github.com/mitchellh/vagrant.git"

relative_path "vagrant"

build do
  patch :source => "vagrant-Gemfile-drop-vagrant-spec-dependency.patch"

  bundle "install"
  bundle "exec rake build"
  gem "install pkg/vagrant-#{version.sub(/^v/, "")}.gem --no-rdoc --no-ri"
end
