module Model
  def self.connect
    @@db = Sequel.sqlite($const.DB_NAME)
  end

  def self.posts
    prevtime = Time.now - $const.INTERVAL
    @@db["select * from posts where time>='#{prevtime}'"]
  end

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
