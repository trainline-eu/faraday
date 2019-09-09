module Faraday
  class Request::PartParams
    def initialize(value, headers)
      @value = value
      @headers = headers
    end

    def to_part(boundary, key)
      Faraday::Parts::Part.new(boundary, key, value, headers)
    end

    attr_reader :value, :headers
  end
end
