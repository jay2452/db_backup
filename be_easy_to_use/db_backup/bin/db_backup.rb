# => bring option parser into the namespace
require "optparse" # a type of getopt

options = {}
option_parser = OptionParser.new do |opts|

  # => create a switch
  opts.on("-i", "--iteration") do
    options[:iteration] = true
  end

  # => create a flag
  opts.on("-p USER") do |user|
    options[:user] = user
  end

  opts.on("-p PASSWORD") do |password|
    options[:password] = password
  end

end


option_parser.parse!
puts options.inspect
