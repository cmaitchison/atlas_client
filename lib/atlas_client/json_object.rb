module AtlasClient
  class JsonObject
    def initialize json
     json = json.to_json if json.class == Hash
     json = JSON.parse json if json.class == String
     @json = json
    end
    def id
      @json['id']
    end
    def method_missing(name, *args, &block)
      @json[name.to_s]
    end
  end
end