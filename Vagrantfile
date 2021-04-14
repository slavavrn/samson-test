Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian9"
  config.vm.hostname = "vDeb9-trainee"

  #config.vm.disk :disk, size: "10GB", primary: true
  config.disksize.size = '10GB'

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.synced_folder "data/", "/data"

  config.vm.provision "shell", path: "provisioning.sh"

  config.vm.network "forwarded_port", guest: 80, host: 80, id: "nginx"
  config.vm.network "forwarded_port", guest: 8888, host: 8888, id: "apache2"
end