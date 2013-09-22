require 'rubygems'
require 'bundler/setup'
require 'koala'

module SocialOne

	class User

# Initialize a new user.
		def initialize(user)
      @user = user
    end

# Initializes a user via the login token. I'm not sure why its called @graph.    
    def access
			@graph = Koala::Facebook::API.new(ENV['ACCESS_TOKEN'])
		end

# Method that allows a post to go to facebook. Works in IRB.
		def post_fb_text(status_update)
			@graph.put_connections('me', 'feed', :message => status_update)
		end
	end

end