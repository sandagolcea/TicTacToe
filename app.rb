require 'rubygems'
require 'sinatra'
Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  erb :main
end

