require 'colorize'

module Helpers

  # Renders a template
  def render_template(template, output, scope)
    require 'erb'
    tmpl = File.read(template)
    erb = ERB.new(tmpl, 0, "<>")
    File.open(output, 'w') do |f|
      f.puts erb.result(scope)
    end
  end

  # color output
  def cap_info message
    puts " INFO #{message}".colorize(:cyan)
  end

  def cap_warn message
    puts " WARN #{message}".colorize(:yellow)
  end

  def cap_error message
    puts " ERROR #{message}".colorize(:red)
  end

end

include Helpers
