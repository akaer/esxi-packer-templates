Vagrant.require_version '>= 1.6.2'

Vagrant.configure('2') do |config|
  config.ssh.username = 'root'
  config.ssh.shell = 'sh'
  config.ssh.insert_key = false
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.nfs.functional = false

  %w('vmware_fusion', 'vmware_workstation', 'vmware_appcatalyst').each do |p|
    config.vm.provider p do |v|
      v.vmx['memsize'] = '8192'
      v.vmx['numvcpus'] = '2'
      v.vmx['ethernet0.virtualDev'] = 'vmxnet3'
      v.vmx['vhv.enable'] = 'true'
    end
  end

  config.vm.provider :vcenter do |vcenter|
    vcenter.num_cpu = 2
    vcenter.memory = 8192
    vcenter.enable_vm_customization = false
  end
end
