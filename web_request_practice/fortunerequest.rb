#this program sends a request to the fortune app to receive the lyrics of 99 bottles of beer on the wall.
require 'http'
response = HTTP.get("http://localhost:3000/99bottles")
puts response.parse(:json)["output"]