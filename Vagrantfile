Vagrant::configure(2) do |config|

  config.vm.provision :puppet, :module_path => "modules" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "site.pp"
  end

  config.vm.define :web01 do |config|
    config.vm.box = "hashicorp/precise64"
    config.vm.network "private_network", :ip => "33.33.33.11"
    config.vm.hostname = "web01.domain.test"
  end

  config.vm.define :web02 do |config|
    config.vm.box = "hashicorp/precise64"
    config.vm.network "private_network", :ip => "33.33.33.12"
    config.vm.hostname = "web02.domain.test"
  end

end
