
require 'sinatra/base'
require './lib/bookmark.rb'




class BookmarkManager < Sinatra::Base

  enable :sessions


  get '/bookmarks' do
    @list = Bookmarks.new

    erb :bookmarks
  end







  run! if app_file == $0
end
