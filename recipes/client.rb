#
# Cookbook Name:: cups
# Recipe:: client 
#
# Copyright 2010, Gerald L. Hevener, Jr, M.S.
# Copyright 2011, Eric G. Wolfe
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
include_recipe "cups::default"

# Make this safe to run client recipe on CUPS server
if node['cups']['servername'] != node['fqdn']
  service node['cups']['service'] do
    action [ :disable, :stop ]
  end

  template "/etc/cups/client.conf" do
    source "client.conf.erb"
    owner "root"
    group "lp"
    mode 0644
  end

  remote_file "/etc/cups/lpoptions" do
    source "http://#{node['cups']['servername']}:631/admin/conf/lpoptions"
    owner "root"
    group "sys"
    mode 0664
  end
end
