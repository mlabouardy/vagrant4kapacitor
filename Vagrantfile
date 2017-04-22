load 'config.rb'

Vagrant.configure('2') do |config|
  config.vm.define $name do |c|
    c.vm.box = $image
    c.vm.hostname = $name
    c.vm.provider 'virtualbox' do |vb|
      vb.name = $name
      vb.memory = $memory
      vb.cpus = $cpu
      vb.gui = $gui
    end
    c.vm.network 'private_network', ip: $ip
    c.vm.synced_folder $folder, '/home/vagrant/shared'
    c.vm.provision 'shell', path: $script
  end
end
