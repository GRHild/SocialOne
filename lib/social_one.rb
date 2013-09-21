require 'rubygems'
require 'bundler/setup'
require 'koala'

module SocialOne

	class User
		def initialize
			@graph = Koala::Facebook::API.new(ENV['ACCESS_TOKEN'])
		end

		def post_fb_text(status_update)
			@graph.put_connections('me', 'feed', :message => status_update)
		end

		def post_twitter(tweet)
		end
	end

end

