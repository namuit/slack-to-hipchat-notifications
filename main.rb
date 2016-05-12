# encoding: UTF-8
require 'json'
require 'sinatra'
require 'hipchat'
require 'redcarpet'

configure :development do
  require 'dotenv'
  Dotenv.load
end

require './routes/init'
