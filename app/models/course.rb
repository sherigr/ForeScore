class Course < ActiveRecord::Base

	has_many :scorecards

	BASE_URL = 'http://theapi.active.com/golf/'


# LOCATIONS FOR CHANNEL
def self.get_location(request_locations)
 locations_string = "GetLocationsForChannel?format=application/jsonnet&channelId=#{request_locations}&api_key=#{ENV['Active_Tee_Time_API_Key']}"

	compiled_locations_URL = URI.escape(BASE_URL + locations_string)
# BASE_URL = 'http://theapi.active.com/golf/GetLocationsForChannel?format=application/jsonnet&channelId=84&api_key=mmyhymr5cuhx9ceeg5pdy7h6'
	api_response = HTTParty.get(compiled_locations_URL)
end

# BASE_URL = "http://theapi.active.com/golf/84/ListTeetimes?courseId=CourseId&date=Date&api_key=mmyhymr5cuhx9ceeg5pdy7h6"




# # swap out this ENV in place of the key
# ENV["Active_Tee_Time_API_Key"] 



end

