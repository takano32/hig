# -*- coding: utf-8 -*-
module View
  def self.init
    list
  end

  def self.list
    get '/:text' do
      unless params[:text] =~ /^favicon/
        session = connect(session)
        Model.say(session, $const.ROOM, params[:text])
        erb :list
      end
    end

    post '/' do
      session = connect(params[:session])
      Model.say(session, $const.ROOM, params[:text])
      session.chomp
    end
  end
end
