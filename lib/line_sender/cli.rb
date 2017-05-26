require 'optparse'
require 'yaml'
require 'line_sender/core'

opt = OptionParser.new
opt.version = LineSender::VERSION
args = {}
opt.on('-u', '--user VALUE', 'target user'){|v|args["user"] = v}
opt.on('-s', '--channel_secret VALUE', 'channel_secret'){|v|args["channel_secret"] = v}
opt.on('-t', '--channel_token VALUE', 'channel_token'){|v|args["channel_token"] = v}
opt.on('-f', '--file VALUE', 'config file'){|v|args[:file] = v}
begin
  opt.parse!(ARGV)
rescue OptionParser::InvalidOption, OptionParser::MissingArgument => e
  STDERR.puts e.message
  exit false
end

options = args[:file] ? YAML.load_file(args[:file]) : {}
options.merge!(args)

line_sender = LineSender.new({
  channel_secret: options["channel_secret"],
  channel_token: options["channel_token"]
})
ARGV.each do |text|
  p line_sender.send(options["user"], text)
end

