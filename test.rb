require 'koala'
require 'twitter'

# graph = Koala::Facebook::API.new(ENV['ACCESS_TOKEN'])
# graph.put_connections('me', 'feed', :message => "yet another test")

class Twit
	def initialize
		client = Twitter::Client.new.configure do |config|
		  config.consumer_key        = ENV['CONSUMER_KEY']
		  config.consumer_secret     = ENV['CONSUMER_SECRET']
		  config.oauth_token         = ENV['OAUTH_TOKEN']
		  config.oauth_token_secret  = ENV['OAUTH_TOKEN_SECRET']
		end
	end

	def twit(tweet)
		Twitter.update(tweet)
	end
end

# Twitter.update("test")

twit1 = Twit.new
twit1.twit('test')


# puts graph.inspect
# puts ENV['ACCESS_TOKEN']