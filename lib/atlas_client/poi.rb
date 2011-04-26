module AtlasClient
  class POI < JsonObject
    
    def reviews
      @reviews ||= Reviews.new @json['reviews'][0]
    end
    
    def telephones
      return @telephones if @telephones
      @telephones = @json['telephones'].collect do |telephone|
        Telephone.new telephone
      end
    end
    
    def properties
      return @properties if @properties
      @properties = @json['properties'].collect do |property|
        Property.new property
      end
    end
    
    def addresses
      return @addresses if @addresses
      @addresses = @json['addresses'].collect do |address|
        Address.new address
      end
    end
    
    def practicalities
      @practicalities ||= Practicalities.new @json['practicalities'][0]
    end
    
    def place
      return @place if @place
      place_id = place_ancestry_ids.split("~").last
      @place = PlaceFinder.find_by_id place_id
    end
    
  end
end