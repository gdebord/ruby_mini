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

# sunrise
# convert to Eastern Daylight Time, and print
hour = response_parsed["results"]["sunrise"][0...2].to_i
hour = (hour - 4)
response_parsed["results"]["sunrise"][0...2] = hour.to_s

print "Sunrise in Brooklyn is at:", response_parsed["results"]["sunrise"] , "\n"


# sunset
# convert to Eastern Daylight Time, and print
hour = response_parsed["results"]["sunset"][0...2].to_i
hour = (hour - 4)
response_parsed["results"]["sunset"][0...2] = hour.to_s

print "Sunset in Brooklyn is at:", response_parsed["results"]["sunset"] , "\n"

# nautical twilight begins
# convert to Eastern Daylight Time, and print
print response_parsed["results"]["nautical_twilight_begin"]
hour = response_parsed["results"]["nautical_twilight_begin"][0...2].to_i
hour = (hour - 4)
response_parsed["results"]["nautical_twilight_begin"][0...2] = hour.to_s

print "Nautical twilight in Brooklyn begins at:", response_parsed["results"]["nautical_twilight_begin"] , "\n"

# nautical twilight ends
# convert to Eastern Daylight Time, and print
hour = response_parsed["results"]["nautical_twilight_end"][0...2].to_i
hour = (hour - 4)
response_parsed["results"]["nautical_twilight_end"][0...2] = hour.to_s

print "Nautical twilight in Brooklyn ends at:", response_parsed["results"]["nautical_twilight_end"] , "\n"



