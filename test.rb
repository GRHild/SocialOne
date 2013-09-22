require 'rubygems'
require 'koala'
require 'twitter'

update = 'still more testing'

graph = Koala::Facebook::API.new(ENV['ACCESS_TOKEN'])
graph.put_connections('me', 'feed', :message => update)

client = Twitter::Client.new.configure do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.oauth_token         = ENV['OAUTH_TOKEN']
  config.oauth_token_secret  = ENV['OAUTH_TOKEN_SECRET']
end

client.update(update)

