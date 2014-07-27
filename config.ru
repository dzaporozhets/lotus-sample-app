require 'rubygems'
require 'bundler'
Bundler.require

require_relative 'application'

run Lotus::Router.new {
   mount Shop::Application, at: '/'
}
