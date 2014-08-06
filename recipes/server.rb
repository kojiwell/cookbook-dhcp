#
# Cookbook Name:: dhcp
# Recipe:: server
#
# Copyright 2014, FutureGrid Project, Indiana University
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Install EPEL repository
include_recipe 'yum-epel'
# Disable iptables
include_recipe 'iptables::disabled'
# Disable SELinux
include_recipe 'selinux::disabled'

cookbook_file "/etc/sysconfig/dhcpd" do
  owner "root"
  group "root"
  mode "0644"
  action :create
end

cookbook_file "/etc/dhcp/dhcpd.conf" do
  owner "root"
  group "root"
  mode "0644"
  action :create
end

