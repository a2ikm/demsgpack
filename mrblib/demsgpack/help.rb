module Demsgpack
  class Help
    def initialize(output_io)
      @output_io = output_io
    end

    def run
      @output_io.puts "Usage: demsgpack [options]"
      @output_io.puts "  -f[NAME], --format[NAME]   specify output format (default is json)"
      @output_io.puts "  -h, --help                 show this message"
      @output_io.puts "  -v, --version              print the version"
    end
  end
end
