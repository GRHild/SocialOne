require 'koala'

graph = Koala::Facebook::API.new(ENV['ACCESS_TOKEN'])
graph.put_connections('me', 'feed', :message => "App Works!")

puts graph.inspect