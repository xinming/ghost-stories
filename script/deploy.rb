#!/usr/bin/env ruby
require 'rubygems'
require 'net/ssh'


HOST = 'ohho.in.th'
USER = 'xinming'
PASS = 'hacker'
DIRECTORY = "~/domains/ghost/ghost-stories"
RAILS_ENV = "production"
PORT = 16000
INIT_RVM = "source /etc/profile; rvm use ruby-1.9.2-p290@ghost"
STOP_SERVER = "passenger stop -p #{PORT}"
START_SERVER = "passenger start -p #{PORT} -e #{RAILS_ENV} -d"
GIT_BRANCH = "master"

Net::SSH.start( HOST, USER, :password => PASS ) do |ssh|
  commands = <<-eos
    cd #{DIRECTORY}
    pwd
    git pull origin #{GIT_BRANCH}
    #{INIT_RVM}
    bundle install --path vendor/bundle
    bundle exec 'rake db:migrate RAILS_ENV=#{RAILS_ENV}'
    #{STOP_SERVER}
    #{START_SERVER}
  eos
  output = ssh.exec!(commands)
  puts output
end