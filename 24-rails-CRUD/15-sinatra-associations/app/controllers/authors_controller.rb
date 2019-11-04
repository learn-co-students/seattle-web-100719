class AuthorsController < ApplicationController
  get '/authors' do
    @authors = Author.all
    erb :'/authors/index'
  end

  get '/authors/:id' do
    @author = Author.find(params[:id])
    @book_count = @author.book_count
    erb :'/authors/show'
  end
end
