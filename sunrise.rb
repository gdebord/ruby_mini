require "net/http"
require 'json'

# Notes: almost working. Using formatted data, UTC hours show up as 1 or 2 digits, depending. Use unformatted? Parse on : ?

# build url
url = "https://api.sunrise-sunset.org/json?lat=40.7283&lng=-73.9472"
uri = URI(url)

# get json data
response = Net::HTTP.get(uri)

# parse json data
response_parsed = JSON.parse(response)

# print location
print "******** Solar Events, Brooklyn EDT ********\n"

# nautical twilight begins
# convert to Eastern Daylight Time, and print
r_index = response_parsed["results"]["nautical_twilight_begin"].index(':')
hour = response_parsed["results"]["nautical_twilight_begin"][0...r_index].to_i
hour = (hour - 4)
response_parsed["results"]["nautical_twilight_begin"][0...r_index] = hour.to_s

print "Nautical twilight begins at: ", response_parsed["results"]["nautical_twilight_begin"] , "\n"

# sunrise
# convert to Eastern Daylight Time, and print
r_index = response_parsed["results"]["sunrise"].index(':')
hour = response_parsed["results"]["sunrise"][0...r_index].to_i
hour = (hour - 4)
response_parsed["results"]["sunrise"][0...r_index] = hour.to_s

print "Sunrise is at: ", response_parsed["results"]["sunrise"] , "\n"

# sunset
# convert to Eastern Daylight Time, and print
r_index = response_parsed["results"]["sunset"].index(':')
hour = response_parsed["results"]["sunset"][0...r_index].to_i
hour = (hour - 4)
response_parsed["results"]["sunset"][0...r_index] = hour.to_s

print "Sunset is at: ", response_parsed["results"]["sunset"] , "\n"


# nautical twilight ends
# convert to Eastern Daylight Time, and print
r_index = response_parsed["results"]["nautical_twilight_end"].index(':')
hour = response_parsed["results"]["nautical_twilight_end"][0...r_index].to_i
hour = (hour - 4)
response_parsed["results"]["nautical_twilight_end"][0...r_index] = hour.to_s

print "Nautical twilight ends at: ", response_parsed["results"]["nautical_twilight_end"] , "\n"

