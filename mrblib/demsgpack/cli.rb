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
      else
        Convert.new(@input_io, @output_io).run
      end
    end

    def parse_options(argv)
      class << argv; include Getopts; end
      argv.getopts("v", "version")
    end
  end
end
