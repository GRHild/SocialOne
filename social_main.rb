require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'koala'
require_relative 'lib/follower_clash'

get '/' do
  erb :index
end

post '/update' do	
	erb :
end