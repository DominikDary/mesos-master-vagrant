Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", type: "dhcp"

  config.vm.network :forwarded_port, guest: 5050, host: 5050
  config.vm.network :forwarded_port, guest: 2181, host: 2181
  config.vm.network :forwarded_port, guest: 8080, host: 8080

  config.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
    #   vb.gui = true
    #
    #   # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.name = "linux--mesos-master"
  end

  # Shell provisioning
  config.vm.provision "shell" do |s|
    s.path = "provision/setup.sh"
  end
end
