require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'koala'

equire_relative './lib/social_one.rb'

graph = Koala::Facebook::API.new(ENV['ACCESS_TOKEN'])
graph.put_connections('me', 'feed', :message => "App Works!")


get '/' do
  erb :socialone
end

post '/facebook'
  erb :result
end


puts graph.inspect