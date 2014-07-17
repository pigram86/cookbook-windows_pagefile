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
default['memory']['2gb'] = '2147483648'
default['memory']['4gb'] = '4294967296'
default['memory']['3.99gb'] = ''
default['memory']['6gb'] = '6442450944'
default['memory']['5.99gb'] = '' 
default['memory']['8gb'] = '8589934592'
default['memory']['7.99gb'] = ''
default['memory']['16gb'] = '17179869184'
default['memory']['15.99gb'] = ''
default['memory']['1gb'] = '1073741824'