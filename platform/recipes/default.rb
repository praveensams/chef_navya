#
# Cookbook:: platform
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['platform'] =~ /centos|CENTOS/ 
	puts " I am a centos "
end

