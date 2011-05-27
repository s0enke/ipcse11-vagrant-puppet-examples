Vagrant::Config.run do |config|
  config.vm.provision :puppet, :module_path => "modules" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "site.pp"
  end
  config.vm.define :web01 do |config|
    config.vm.box = "maverick64"
    config.vm.network "33.33.33.11"
    config.vm.host_name = "web01.domain.test"
  end

  config.vm.define :web02 do |config|
    config.vm.box = "maverick64"
    config.vm.network "33.33.33.12"
    config.vm.host_name = "web02.domain.test"
  end

  config.vm.define :lb do |config|
    config.vm.box = "maverick64"
    config.vm.network "33.33.33.10"
    config.vm.host_name = "lb.domain.test"
  end
end
