require 'koala'

graph = Koala::Facebook::API.new(ENV['ACCESS_TOKEN'])
graph.put_connections('me', 'feed', :message => "another test")


puts graph.inspect
# puts ENV['ACCESS_TOKEN']