#
# Cookbook:: secret_copy
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/etc/chef/encrypted_data_bag_secret' do
	source 'pri.key'
end
