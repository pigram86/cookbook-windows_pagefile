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

def memory
  powershell_script "$ram" do
    code <<-EOH
    $computer = Get-WMIObject -class "Win32_ComputerSystem"
    $ram = [math]::Round($computer.TotalPhysicalMemory/1024/1024/1024/0)
    EOH
  end
end

if memory == 2
    windows_pagefile 'c:\pagefile.sys' do
      initial_size (3072)
      maximum_size (3072)
      system_managed false
      automatic_managed false
      action :set
      not_if {reboot_pending?}
    end
elsif memory == 4
    windows_pagefile 'c:\pagefile.sys' do
      initial_size (6144)
      maximum_size (6144)
      system_managed false
      automatic_managed false
      action :set
      not_if {reboot_pending?}
    end 
elsif memory == 6
    windows_pagefile 'c:\pagefile.sys' do
      initial_size (9216)
      maximum_size (9216)
      system_managed false
      automatic_managed false
      action :set
      not_if {reboot_pending?}
    end
elsif memory == 8
    windows_pagefile 'C:\pagefile.sys' do
      initial_size  (8193)
      maximum_size  (8193)
      system_managed false
      automatic_managed false
      action :set
      not_if {reboot_pending?}
    end
else memory = 16
    windows_pagefile 'c:\pagefile.sys' do
      initial_size (16385)
      maximum_size (16385)
      system_managed false
      automatic_managed false
      action :set
      not_if {reboot_pending?}
    end
  Chef::Log.error("Can't determine memory and set pagefile")
end
