#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/attributesfile' do
 content "This is to get attributes in Nodes by using Roles
 HOSTNAME: #{node['hostname']}
 IPADDRESS: #{node['ipaddress']}
 CPU: #{node['cpu'] ['0'] ['mhz']}
 MEMORY: #{node['memory'] ['total']}"
 owner 'root'
 group 'root'
 action :create
end
