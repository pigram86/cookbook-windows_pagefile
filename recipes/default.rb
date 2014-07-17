#
# Cookbook Name:: windows_pagefile
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


case node['total_physical_memory']
when node['memory']['2gb']
  include_recipe "2gb.rb"
when node['memory']['4gb']
  include_recipe "4gb.rb"
when node['memory']['6gb']
  include_recipe "6gb.rb"
when node['memory']['8gb']
  include_recipe "8gb.rb"
when node['memory']['16gb']
  include_recipe "16gb.rb"
when node['memory']['3.99gb']
  include_recipe "4gb.rb"
when node['memory']['7.99gb']
  include_recipe "8gb.rb"
when node['memory']['15.99gb']
  include_recipe "16gb.rb"
when node['memory']['1gb']
  include_recipe "1gb.rb"
end