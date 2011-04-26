module AtlasClient
  class PoiFinder < Finder
    require 'json'

    @pois_url = "http://lposfusion.load.lpo/pois?"
    
    def self.find_by_place_id place_id
      query "where[place]=#{place_id}"
    end
    
    def self.find_by_id id
      query("where[id]=#{id}").first
    end
    
    def self.query query_string
      json = get_json @pois_url+query_string+"&limit=999999"
      pois = []
      json['pois'].collect do |poi_json|
        POI.new(poi_json)
      end
    end
  end
end