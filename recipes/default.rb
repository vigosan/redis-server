if node['redis-server']['use_ppa']
  apt_repository 'redis-server' do
    uri node['redis-server']['ppa']
    distribution node['lsb']['codename']
  end
end

package node['redis-server']['package']

template '/etc/redis/redis.conf' do
  owner 'redis'
  group 'redis'
  mode '0644'
  source 'redis.conf.erb'
  notifies :run, 'execute[restart-redis]', :immediately
end

directory '/etc/redis' do
  owner 'redis'
  group 'redis'
  action :create
end

execute 'restart-redis' do
  command '/etc/init.d/redis-server restart'
  action :nothing
end
