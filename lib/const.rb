module Const
  def self.init
    return Const.new
  end

  class Const
    attr_reader :API_KEY
    attr_reader :SECRET
    attr_reader :USER
    attr_reader :PASS
    attr_reader :ROOM

    attr_reader :SESSION_CREATE
    attr_reader :USER_GET_ROOMS
    attr_reader :ROOM_SAY

    def initialize
      @API_KEY = "nmgVpc"
      @SECRET = "jI8s6iOKZ5wJhfpdNFS2CBleMAm"
      @USER = "deepneko"
      @PASS = "shin2812"
      @ROOM = "hishow"

      @SESSION_CREATE = "http://lingr.com/api/session/create"
      @USER_GET_ROOMS = "http://lingr.com/api/user/get_rooms"
      @ROOM_SAY = "http://lingr.com/api/room/say"
    end
  end
end
