name             'chef-gvm'
maintainer       'Mohit Sethi'
maintainer_email 'mohit@sethis.in'
license          'Apache v2'
description      'Installs/Configures chef-gvm'
long_description 'Installs/Configures chef-gvm'
version          '0.1.0'

recipe 'gvm',             'Installs gvm'


%w{ debian ubuntu centos fedora }.each do |os|
  supports os
end

depends 'chef_gem'

