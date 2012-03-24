module Const
  def self.init
    return Const.new
  end

  class Const
    attr_reader :GW_SERVER
    attr_reader :GW_PORT

    def initialize
      @GW_SERVER = "127.0.0.1"
      @GW_PORT = 44444
    end
  end
end
