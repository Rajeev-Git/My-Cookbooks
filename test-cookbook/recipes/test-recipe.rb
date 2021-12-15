#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/file1' do
  content "Hello World, Good Morning !!"
  action :create
end

#execute "run a script" do
#  command <<-EOH
#  mkdir /rajeevdir
#  touch /rajeevfile
#  EOH
#end

user "raj" do
  action :create
end

group "DevOps" do
  action :create
  members 'raj'
  append true
end

file '/testfile'
user 'guest'
