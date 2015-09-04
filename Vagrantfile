Vagrant.configure(2) do |config|
  config.vm.box = "softEcon/base"

  config.vm.provider "virtualbox" do |vb|
  	# Display the VirtualBox GUI when booting the machine
  	vb.gui = true
  	# Customize the amount of memory on the VM:
  	vb.memory = "2048"
  	vb.cpus = 2
  end

  # provision
  config.vm.provision 'shell' do |s|
    s.path = 'provision.sh'
  end

  config.vm.provision "file", source: "./rf_demo_code", destination: "rf_demo_code"

end
