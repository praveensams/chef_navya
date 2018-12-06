#
# Cookbook:: secret
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

secret = Chef::EncryptedDataBagItem.load_secret("/etc/chef/encrypted_data_bag_secret")

luigi_keys = Chef::EncryptedDataBagItem.load("chef", "school", secret)

puts luigi_keys['home']
puts luigi_keys['today']

bash "updating the value in a file" do 
     code <<-EOH
	 echo #{luigi_keys['home']} >> /tmp/navya
	 EOH
end

