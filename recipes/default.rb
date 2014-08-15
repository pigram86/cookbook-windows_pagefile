#
# Cookbook Name:: pagefile
# Recipe:: default
#
# Copyright (C) 2014 Todd Pigram
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['kernel']['cs_info']['total_physical_memory']
when "2147012608"
  include_recipe "pagefile::2gb"
when "4294496256"
  include_recipe "pagefile::4gb"
when "6441979904"
  include_recipe "pagefile::6gb"
when "8585334784"
  include_recipe "pagefile::8gb"
when "17171070976"
  include_recipe "pagefile::16gb"
end