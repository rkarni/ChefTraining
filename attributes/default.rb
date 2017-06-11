# => Wildfly Configuration
# => Source
default['jboss']['version'] = '10.1.0'
default['jboss']['url'] = 'http://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.tar.gz'
default['jboss']['checksum'] = '80781609be387045273f974662dadf7f64ad43ee93395871429bc6b7786ec8bc'

# => Base Directory
default['jboss']['base'] = '/opt/wildfly'

# => Wildfly Deployment Type (standalone or domain)
default['jboss']['mode'] = 'standalone'

# => Set Wildfly Service Name
default['jboss']['service'] = 'jboss'

# => Set Wildfly User & Group
default['wildfly']['user'] = 'wildfly'
default['wildfly']['group'] = 'wildfly'

# => Interface Configuration
# => Should probably put a proxy in front of these... Maybe NginX?
default['jboss']['int']['mgmt']['bind'] = node['ipaddress']
default['jboss']['int']['mgmt']['http_port'] = '9990'
default['jboss']['int']['mgmt']['https_port'] = '9993'

default['jboss']['int']['pub']['bind'] = node['ipaddress']
default['jboss']['int']['pub']['http_port'] = '8080'
default['jboss']['int']['pub']['https_port'] = '8443'

default['jboss']['int']['wsdl']['bind'] = node['ipaddress']
default['jboss']['int']['ajp']['port'] = '8009'