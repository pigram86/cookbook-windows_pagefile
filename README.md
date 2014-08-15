Description
===========

This cookbook sets static pagefiles on Windows systems. Following Microsoft and Citrix best practices, any server below 8GB of physical ram
will have a pagefile that 1.5 times physical ram. Anything over 8GB will be ram + one mb. These recipes set both the initial/maximum size

Supported Platforms
===================

* Windows Server 2008 R2
* Windows Server 2012
* Windows Server 2012 R2
* Windows 7
* Windows 8.1

Cookbooks
=========

* windows

Usage
=====

* pagefile::default - case statement based on Total_Phyiscal_Memory
  -----------------
   def memory
  powershell_script "$ram" do
    code <<-EOH
    $computer = Get-WMIObject -class "Win32_ComputerSystem"
    $ram = [math]::Round($computer.TotalPhysicalMemory/1024/1024/1024/0)
    EOH
  end
end

if memory = 2
    windows_pagefile 'c:\pagefile.sys' do
      initial_size (3072)
      maximum_size (3072)
      system_managed false
      automatic_managed false
      action :set
      not_if {reboot_pending?}
    end
elsif memory = 4
    windows_pagefile 'c:\pagefile.sys' do
      initial_size (6144)
      maximum_size (6144)
      system_managed false
      automatic_managed false
      action :set
      not_if {reboot_pending?}
    end 
elsif memory = 6
    windows_pagefile 'c:\pagefile.sys' do
      initial_size (9216)
      maximum_size (9216)
      system_managed false
      automatic_managed false
      action :set
      not_if {reboot_pending?}
    end
elsif memory = 8
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



pagefile::default
-----------------

Include `pagefile` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[pagefile::default]"
  ]
}
```

 Contributing
=============

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

License and Authors
===================

Author:: Todd Pigram (<todd@toddpigram.com>)

Copyright:: 2014, Todd Pigram

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
