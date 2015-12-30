module Demsgpack
  class YAMLConverter < BaseConverter
    def encode(data)
      YAML.dump(data)
    end
  end
end
