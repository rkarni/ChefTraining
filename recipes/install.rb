# => Shorten Hashes
jboss = node['jboss']

# => Download Wildfly Tarball
remote_file "#{Chef::Config[:file_cache_path]}/wildfly-10.1.0.Final.tar.gz" do
  source jboss['url']
  checksum jboss['checksum']
  action :create
  notifies :run, 'bash[Extract jboss]', :immediately
end

# => Extract jboss
bash 'Extract jboss' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  tar xzf wildfly-10.1.0.Final.tar.gz -C #{jboss['base']} --strip 1
  chown #{jboss['user']}:#{jboss['group']} -R #{jboss['base']}
  rm -f #{::File.join(jboss['base'], '.chef_deployed')}
  EOF
  action :nothing
end