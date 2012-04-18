module Model
  def self.say(text)
    begin
      sock = TCPSocket.open($const.GW_SERVER, $const.GW_PORT)
    rescue
      puts "socket.open failed : #$!\n"
    else
      sock.write(text)
      sock.close
    end
  end
end
