#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'tree' do
  action :install
end

file '/file2' do
  content 'This is my second file'
  action :create
  owner 'root'
  group 'root'
end

%w(httpd mariadb-server unzip git vim tree).each do |p|
 package p do
  action :install
 end
end

%w(rahul rishi balaji vamsee alekhya).each do |p|
 user p do
  action :create
 end
end
