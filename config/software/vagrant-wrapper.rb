name "vagrant-wrapper"
default_version "v1.1"

source :git => "git://github.com/sl4mmy/vagrant-wrapper"

relative_path "vagrant-wrapper"

build do
  command "cp bin/vagrant #{install_dir}/bin/vagrant"
  command "chmod +x #{install_dir}/bin/vagrant"
end
