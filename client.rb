#!/usr/bin/ruby

require 'socket'

begin
  sock = TCPSocket.open("127.0.0.1", 44444)
rescue
  puts "socket.open failed : #$!\n"
else
  sock.write("HELLO")
  sock.close
end
