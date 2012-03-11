module Model
  def self.connect(session)
    res = lingr_post($const.USER_GET_ROOMS, "session=#{session}")
    if res["status"] == "error"
      req = "api_key=#{$const.API_KEY}&user=#{$const.USER}&password=#{$const.PASS}"
      res = lingr_post($const.SESSION_CREATE, req)
      session = res["session"]
    end
    session
  end

  def self.say(session, room, text)
    req = "session=#{session}&room=#{room}&text=#{text}"
    lingr_post($const.ROOM_SAY, req)
  end

  def self.lingr_post(url, data)
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host)
    return JSON.parse(http.post(uri.path, data).body)
  end
end
