require "ougai/formatters/inline_readable/version"
require "ougai/formatters/readable"

module Ougai
  module Formatters
    class InlineReadable < Ougai::Formatters::Readable
      def call(severity, time, _progname, data)
        msg = data.delete(:msg)
        @excluded_fields.each { |f| data.delete(f) }

        level = @plain ? severity : colored_level(severity)
        strs = ["[#{time.iso8601(3)}] #{level}: #{msg} (#{data.inspect})"]
        if err_str = create_err_str(data)
          strs.push(err_str)
        end
        strs.join("\n") + "\n"
      end
    end
  end
end
