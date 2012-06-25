DESCRIPTION
===========

Installs the cups package. Stops and disables the cups service.

Configures the cups client. Should only be ran on a cups client.

Default client config is /etc/cups/client.conf.

ATTRIBUTES
==========

* cups['servername']

  - Sets the name of the cups server.

USAGE
=====

Create a cups role and override the following variable to set the ServerName
in /etc/cups/client.conf.  The default value is simply, "cups".

    cups['servername'] = "mucups.marshall.edu"

AUTHOR AND LICENSE
==================

Author:: Gerald L. Hevener, Jr, M.S. 

Copyright 2010

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
