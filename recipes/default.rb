#
# Cookbook Name:: yum-mariadb
# Recipe:: default
#
# Copyright (C) 2015 Mindjet LLC
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

if node['yum']['mariadb']['managed']
  yum_repository node['yum']['mariadb']['repositoryid'] do
    baseurl node['yum']['mariadb']['baseurl']
    cost node['yum']['mariadb']['cost']
    description node['yum']['mariadb']['description']
    enabled node['yum']['mariadb']['enabled']
    enablegroups node['yum']['mariadb']['enablegroups']
    exclude node['yum']['mariadb']['exclude']
    failovermethod node['yum']['mariadb']['failovermethod']
    fastestmirror_enabled node['yum']['mariadb']['fastestmirror_enabled']
    gpgcheck node['yum']['mariadb']['gpgcheck']
    gpgkey node['yum']['mariadb']['gpgkey']
    http_caching node['yum']['mariadb']['http_caching']
    include_config node['yum']['mariadb']['include_config']
    includepkgs node['yum']['mariadb']['includepkgs']
    keepalive node['yum']['mariadb']['keepalive']
    max_retries node['yum']['mariadb']['max_retries']
    metadata_expire node['yum']['mariadb']['metadata_expire']
    mirror_expire node['yum']['mariadb']['mirror_expire']
    mirrorlist node['yum']['mariadb']['mirrorlist']
    mirrorlist_expire node['yum']['mariadb']['mirrorlist_expire']
    password node['yum']['mariadb']['password']
    priority node['yum']['mariadb']['priority']
    proxy node['yum']['mariadb']['proxy']
    proxy_username node['yum']['mariadb']['proxy_username']
    proxy_password node['yum']['mariadb']['proxy_password']
    report_instanceid node['yum']['mariadb']['report_instanceid']
    repositoryid node['yum']['mariadb']['repositoryid']
    skip_if_unavailable node['yum']['mariadb']['skip_if_unavailable']
    source node['yum']['mariadb']['source']
    sslcacert node['yum']['mariadb']['sslcacert']
    sslclientcert node['yum']['mariadb']['sslclientcert']
    sslclientkey node['yum']['mariadb']['sslclientkey']
    sslverify node['yum']['mariadb']['sslverify']
    timeout node['yum']['mariadb']['timeout']
    username node['yum']['mariadb']['username']

    action :create
  end
end

