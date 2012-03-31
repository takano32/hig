module Const
  def self.init
    return Const.new
  end

  class Const
    attr_reader :GW_SERVER
    attr_reader :GW_PORT
    attr_reader :DB_NAME
    attr_reader :INTERVAL

    def initialize
      @GW_SERVER = "127.0.0.1"
      @GW_PORT = 44444
      @DB_NAME = "hig.db"
      @INTERVAL = 30
    end
  end
end
