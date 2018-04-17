require "net/http"

url = "https://api.sunrise-sunset.org/json?lat=40.7128&lng=74.0060&formatted=0"

uri = URI(url)
response = Net::HTTP.get(uri)
#response["results"]
# #puts response
# #puts response["results"]["sunrise"]
response_parsed = JSON.parse(response)
hour = response_parsed["results"]["sunrise"][14...16].to_i
hour = (hour - 4)%24
response_parsed["results"]["sunrise"][14...16] = hour.to_s

pp response_parsed["results"]["sunrise"]

# NOTE: the sunrise time is converting to Eastern, but it is in ISO 8601 format. That said, if the conversion goes to the previous day, the date needs to be changed as well




