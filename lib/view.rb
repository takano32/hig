# -*- coding: utf-8 -*-
module View
  def self.init
    list
  end

  def self.list
    post '/' do
      Model.say(params[:text])
    end
  end
end
