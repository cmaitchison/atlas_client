module AtlasClient
  class  Place
    require 'json'
    require 'net/http'
    
    @url = "http://lposfusion.load.lpo:3000/places"
    
    def self.find id
      response = Net::HTTP.get URI.parse(@url+"?where[id]=#{id}")
      json = JSON.parse response
      place_json = json['places'][0]
      Place.new place_json
    end
    
    def initialize json
     @json = json
    end
  
    def method_missing(name, *args, &block)
      @json[name.to_s]
    end
    
    def json
      @json
    end
  end
end