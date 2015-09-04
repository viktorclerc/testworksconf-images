Vagrant.configure(2) do |config|
  config.vm.box = "box-cutter/ubuntu1404-desktop"

  config.vm.provider "virtualbox" do |vb|
  	# Display the VirtualBox GUI when booting the machine
  	vb.gui = true
  	# Customize the amount of memory on the VM:
  	vb.memory = "2048"
  	vb.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
     sudo apt-get update
     sudo apt-get install -y git
     sudo apt-get install -y python-pip
     sudo apt-get install -y python-wxgtk2.8
     sudo pip install robotframework
     sudo pip install robotframework-ride==1.5a1
     sudo pip install robotframework-selenium2library
  SHELL
end
