module SocialOne

	class User
		def initialize
			@graph = Koala::Facebook::API.new()
		end

		def post_fb_text(status_update)
			@graph.put_connections('me', 'feed', :message => status_update)
		end
	end

end