# Write your code here
require 'net/http'
 require 'open-uri'
 require 'json'
 require 'pry'
 

 class GetRequester
    attr_reader :url 

    def initialize (url)
        @url = url
    end 

    def get_response_body
        #sends a GET request to the RL provided on initialization rturning the body of the request
        uri = URI.parse(self.url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json 
        # parse_json converts JSON returned from 'get_response_body' into Ruby data struct
        JSON.parse(get_response_body)
     end
 end