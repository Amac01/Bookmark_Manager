
require 'sinatra/base'
require './lib/bookmark.rb'
require 'pg'



class BookmarkManager < Sinatra::Base

  enable :sessions


  get '/bookmarks' do
    @list = Bookmarks.see_list
    # p ENV

    erb :bookmarks
  end

post '/bookmarks/create' do
  Bookmarks.create(params[:url], params[:title])
  redirect('/bookmarks')
end

post '/bookmarks/delete' do
  Bookmarks.delete(params[:delete] )
  redirect('/bookmarks')
end




  run! if app_file == $0
end
