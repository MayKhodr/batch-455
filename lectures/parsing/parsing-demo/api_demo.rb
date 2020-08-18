require 'json'
require 'open-uri'

# Github API

url = 'https://api.github.com/users/ssaunier'
serialized_user = open(url).read

hash = JSON.parse(serialized_user)

puts hash['login']
puts hash['company']

# Chuck Norris Jokes API

url = 'https://api.chucknorris.io/jokes/random'
serialized_joke = open(url).read

hash = JSON.parse(serialized_joke)

puts hash['value']
