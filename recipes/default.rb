#
# Cookbook Name:: chef-gvm
# Recipe:: default
#
# Copyright (C) 2014 Mohit Sethi <mohit@sethis.in>
#
#
#


bash "gvm_install" do
  user        node.gvm.user
  cwd         node.gvm.home
  environment Hash['HOME' => node.gvm.home]
  code        <<-SH
  curl -s get.gvmtool.net -o /tmp/gvm-installer &&
  bash /tmp/gvm-installer
  rm /tmp/gvm-installer
  SH
  not_if      { File.directory?("#{node.gvm.home}/.gvm") }
end
