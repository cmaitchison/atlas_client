module AtlasClient
  class Place
    require 'json'
    
    def initialize json
     @json = json
    end
  
    def method_missing(name, *args, &block)
      @json[name.to_s]
    end
    
    def pois
      @pois ||= PoiFinder.find_by_place_id id
    end
  end
end