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
  @graph = SocialOne::User.new
  @result = SocialOne::User.new(status_update).post_fb_update
  erb :result
end