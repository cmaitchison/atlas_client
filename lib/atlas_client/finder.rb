module AtlasClient
  class Finder
    require 'net/http'
    require 'json'
    
    def self.get_json url
      response = Net::HTTP.get URI.parse(url)
      JSON.parse response
    end
  end
end