require 'rack-flash'

class SongsController < ApplicationController 
    configure do 
        enable :sessions 
        use Rack::Flash 
    end


    get "/songs" do 
        @songs = Song.all
        erb :'songs/index'
    end


end
