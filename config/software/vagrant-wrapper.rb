name "vagrant-wrapper"
version "master"

source :git => "git://github.com/hashicorp/puppet-modules"

relative_path "vagrant-wrapper"

build do
  command 'sed -i "/^export GEM_PATH=/ s/\/gems/\/lib\/ruby\/gems\/1\.9\.1\//" modules/vagrant_installer/templates/vagrant.erb'
  command "cp modules/vagrant_installer/templates/vagrant.erb #{install_dir}/bin/vagrant"
  command "chmod +x #{install_dir}/bin/vagrant"
end
