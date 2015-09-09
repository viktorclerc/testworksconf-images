# robot-framework-workshop
Workshop material for Robot Framework Open Kitchen / TestWorksConf session

# Creating a new box from the MASTER branch and place contents on USB
1. On MASTER branch make sure you documented al manual changes made in the VM in the Vagrantfile. Automate all the things

2. [optional] Destroy and re-provision the VM. Make sure you test everything

  ```   
  vagrant destroy
  vagrant up
  ```
3. Test provisioning of the VM. Is everything the way you want it?
4. Shutdown VM and create a new box

  ```
  vagrant package --output robot-framework.box
  ```
5. Place Vagrantfile from RELEASE-BOX branch and the vagrant box you just created on an USB stick

