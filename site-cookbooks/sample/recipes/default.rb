#
# Cookbook Name:: sample
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
log 'Hello Chef'
service 'iptables' do
  action [:disable, :stop]
end
package 'httpd' do
  action :install
end

service 'httpd' do
  action :start
end
