# -*- coding: utf-8 -*-
require 'rubygems'
require 'cinch'
require 'socket'

IRC_SERVER = "127.0.0.1"
IRC_PORT = 16667
GW_PORT = 44444
NICKNAME = "hishow_"
CHANNEL = "#hixi-test"

bot = Cinch::Bot.new do
  configure do |c|
    c.server = IRC_SERVER
    c.port = IRC_PORT
    c.nick = NICKNAME
    c.realname = NICKNAME
    c.user = NICKNAME
    c.channels = [CHANNEL]
  end
end

t = Thread.new do
  bot.start
end
t.run

server = Socket.new(Socket::AF_INET, Socket::SOCK_STREAM, 0)
sockaddr = Socket.sockaddr_in(GW_PORT, "127.0.0.1")
server.bind(sockaddr)
server.listen(5)
while true
  sock, sockaddr = server.accept

  while buf = sock.gets
    bot.irc.send("PRIVMSG #{CHANNEL} :#{buf}")
  end

  sock.close
end
