maintainer       "Gerald L. Hevener, Jr, M.S."
maintainer_email "hevenerg@marshall.edu"
license          "Apache 2.0"
description      "Installs/Configures cups"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

%w{ redhat centos }.each do |os|
  supports os
end

attribute "cups",
  :display_name => "CUPS",
  :description => "Hash of CUPS attributes",
  :type => "hash"

attribute "cups/service",
  :display_name => "CUPS Service",
  :description => "Name of the CUPS service",
  :calculated => true

attribute "cups/servername",
  :display_name => "CUPS Server",
  :description => "Name of the CUPS server",
  :default => "cups",
  :required => "recommended"
