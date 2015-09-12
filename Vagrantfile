Vagrant.configure(2) do |config|
  config.vm.box = "box-cutter/ubuntu1404-desktop"

  config.vm.provider "virtualbox" do |vb|
  	# Display the VirtualBox GUI when booting the machine
  	vb.gui = true
  	# Customize the amount of memory on the VM:
  	vb.memory = "2048"
  	vb.cpus = 2
  end

  # provision generics
  config.vm.provision 'shell' do |s|
    s.path = 'provision-generics.sh'
  end

  # provision Robot Framework
#  config.vm.provision 'shell' do |s|
#    s.path = 'provision-rf.sh'
#  end

  # Beefing up FitNesse
  # provision IntelliJ CE and JDK
  config.vm.provision 'shell' do |s|
    s.path = 'provision-IDEA.sh'
  end

  # Galen
  # provision github repository
  config.vm.provision 'shell' do |s|
    s.path = 'provision-galen-github.sh'
  end


end
