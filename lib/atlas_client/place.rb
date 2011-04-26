module AtlasClient
  class Place < JsonObject
    require 'json'
  
    def pois
      @pois ||= PoiFinder.find_by_place_id id
    end
  end
end