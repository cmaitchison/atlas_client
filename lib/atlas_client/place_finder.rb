module AtlasClient
  class PlaceFinder < Finder
    require 'json'

    @places_url = "http://lposfusion.load.lpo/places?"
    
    def self.find_by_id id
      query("where[id]=#{id}").first
    end
    
    def self.query query_string
      json = get_json @places_url+query_string+"&limit=999999"
      places = []
      json['places'].collect do |place_json|
        Place.new(place_json)
      end
    end
    
  end
end