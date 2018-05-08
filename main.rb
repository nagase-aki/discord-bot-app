require 'discordrb'


discord_token = ENV['DISCORD_TOKEN']
bot = Discordrb::Bot.new token: discord_token

bot.message(content: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run
