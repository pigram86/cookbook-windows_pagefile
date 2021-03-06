#
# Cookbook Name:: pagefile
# Recipe:: 2gb
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
# Set pagefile
windows_pagefile 'c:\pagefile.sys' do
  initial_size (3072)
  maximum_size (3072)
  system_managed false
  automatic_managed false
  action :set
  not_if {reboot_pending?}
end

# if reboot needed
windows_reboot 30 do
  reason 'Chef said reboot'
  only_if {reboot_pending?}
end