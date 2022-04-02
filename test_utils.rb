# Include color method for testing
class String
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end
end

def assert(desc, result, expected)
  puts result == expected ? "Pass #{desc}".green : "Fail #{desc} result:#{result} expected:#{expected}".red
end
