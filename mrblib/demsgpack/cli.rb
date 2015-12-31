module Demsgpack
  class CLI
    def initialize(argv, input_io = $stdin, output_io = $stdout, error_io = $stderr)
      @options   = parse_options(argv)
      @input_io  = input_io
      @output_io = output_io
      @error_io  = error_io
    end

    def run
      if @options["version"]
        Version.new(@output_io).run
      elsif @options["help"]
        Help.new(@output_io).run
      else
        converter_class_for(@options["format"]).new(@input_io, @output_io).run
      end
    end

    def converter_class_for(format)
      case format.to_s.downcase
      when "yaml"
        YAMLConverter
      else
        JSONConverter
      end
    end

    def parse_options(argv)
      class << argv; include Getopts; end
      argv.getopts("f:hv", "format:json", "help", "version")
    end
  end
end
