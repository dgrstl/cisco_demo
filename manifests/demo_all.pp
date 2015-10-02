# Manifest to demo all cisco providers
#
# Copyright (c) 2014-2015 Cisco and/or its affiliates.
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

class cisco_demo::demo_all {

  include cisco_demo::install

  # If a custom gem repo and/or proxy is needed, the installer
  # can be configured as follows:
  #
  # class {'cisco_demo::install':
  #   repo  => 'http://gemserver.domain.com:8808',
  #   proxy => 'http://proxy.domain.com:8080',
  # }

  include cisco_demo::demo_patching
  include cisco_demo::demo_command_config
  include cisco_demo::demo_interface
  include cisco_demo::demo_vlan
  include cisco_demo::demo_ospf
  include cisco_demo::demo_tacacs_server
  include cisco_demo::demo_tacacs_server_host
  include cisco_demo::demo_vtp
  include cisco_demo::demo_snmp
}
