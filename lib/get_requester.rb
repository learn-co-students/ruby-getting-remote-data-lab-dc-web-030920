# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    attr_reader :resourse

    def initialize (resourse)
        @resourse = resourse

    end

    #  send a request,
    # return a Ruby Array or Hash made up of data   
    # converted from the response of that request
    def get_response_body 
        # change the url to uri object
        uri = URI.parse(self.resourse)
        # request the uri object
        request = Net::HTTP.get_response(uri)
        # return the the body of the requested url
        request.body
    end

    # returns the JSON form
    def parse_json
       JSON.parse(self.get_response_body)
    end
    
end
