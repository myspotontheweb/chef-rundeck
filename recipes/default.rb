#
# Cookbook Name:: rundeck
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"

rundeck_repo "rundeck" do
    action :create
end

package "rundeck" do
    action :install
end

service "rundeckd" do
    action :start
end

