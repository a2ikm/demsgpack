module Demsgpack
  class JSONConverter < BaseConverter
    def encode(data)
      JSON.generate(data)
    end
  end
end
