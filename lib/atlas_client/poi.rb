module AtlasClient
  class POI
    require 'json'

    @url = "http://lposfusion.load.lpo:3000/pois"
    
    def initialize json
     @json = json
    end
  
    def method_missing(name, *args, &block)
      @json[name.to_s]
    end
  
    def place
      return @place if @place
      place_id = place_ancestry_ids.split("~").last
      @place = PlaceFinder.find_by_id place_id
    end
    
  end
end