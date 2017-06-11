# => Java Configuration
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true
default['java']['jdk_version'] = '8'
 
default['java']['jdk']['8']['x86_64']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/8u51-b16/jdk-8u51-linux-x64.tar.gz'
default['java']['jdk']['8']['x86_64']['checksum'] = 'd7149012cc51c2cdb8d3a1767825e0dfc36ca0419c3dae56d993cb2732cbeff1' #sha256
default['java']['java_home'] = "/usr/bin/java/latest"