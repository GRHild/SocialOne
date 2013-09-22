require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'koala'

require_relative './lib/social_one.rb'


include SocialOne


get '/' do
  'Hello World'
  erb :socialone
end

post '/facebook' do
  @graph = Koala::Facebook::API.new(params[:update])
  @result = Koala::Facebook::API.new(status).put_connections
  erb :result
end