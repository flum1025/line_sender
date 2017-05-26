require "line_sender/version"
require 'line/bot'

class LineSender
  def initialize(options)
    @client = Line::Bot::Client.new options
  end

  def send(user, message)
    @client.push_message(user,{
      type: :text,
      text: message
    })
  end
end
