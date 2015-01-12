default['yum']['mariadb']['repositoryid'] = 'mariadb'

case node['kernel']['machine']
when 'x86_64'
  arch="amd64"
when 'i386'
  arch="x86"
else
  arch="amd64"
end

case node['platform']
when 'amazon'
  default['yum']['mariadb']['description'] = 'MariaDB 10.0 repository for Enterprise Linux 6 - $basearch'
  default['yum']['mariadb']['baseurl'] = "http://yum.mariadb.org/10.0/centos6-#{arch}"
else
  case node['platform_version'].to_i
  when 5
    default['yum']['mariadb']['description'] = 'MariaDB 10.0 repository for Enterprise Linux 5 - $basearch'
    default['yum']['mariadb']['baseurl'] = "http://yum.mariadb.org/10.0/centos6-#{arch}"
  when 6
    default['yum']['mariadb']['description'] = 'MariaDB 10.0 repository for Enterprise Linux 6 - $basearch'
    default['yum']['mariadb']['baseurl'] = "http://yum.mariadb.org/10.0/centos6-#{arch}"
  when 7
    default['yum']['mariadb']['description'] = 'MariaDB 10.0 repository for Enterprise Linux 7 - $basearch'
    default['yum']['mariadb']['baseurl'] = "http://yum.mariadb.org/10.0/centos6-amd64"
  end
end

default['yum']['mariadb']['gpgkey'] = "https://yum.mariadb.org/RPM-GPG-KEY-MariaDB"
default['yum']['mariadb']['gpgcheck'] = true
default['yum']['mariadb']['enabled'] = true
default['yum']['mariadb']['managed'] = true

