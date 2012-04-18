# -*- coding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("lib", File.dirname(__FILE__))

require 'net/http'
require 'rubygems'
require 'sinatra'
require 'erb'
require 'builder'
require 'json/pure'
require 'uri'
require 'pp'
require 'twitter'
require 'oauth'
require 'socket'

require 'view'
require 'model'
require 'const'

$const = Const.init
View.init
set :root, File.dirname(__FILE__)
set :public_folder, File.dirname(__FILE__) + '/public'

helpers do
  def connect
    #Model.connect
  end
end
