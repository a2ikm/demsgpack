module Demsgpack
  class BaseConverter
    def initialize(input_io, output_io)
      @input_io  = input_io
      @output_io = output_io
    end

    def run
      @input_io.each_line do |line|
        @output_io.write convert(line)
      end
    end

    def convert(msgpack)
      encode(decode(msgpack))
    end

    def decode(msgpack)
      MessagePack.unpack(msgpack)
    end

    def encode(data)
      raise NotImplementedError
    end
  end
end
