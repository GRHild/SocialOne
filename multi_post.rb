require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'koala'

require_relative './lib/social_one.rb'

include SocialOne


get '/' do
  erb :socialone
end

post '/facebook' do
  
  erb :result
end