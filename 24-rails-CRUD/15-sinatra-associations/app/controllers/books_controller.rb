class BooksController < ApplicationController
  #root
  get '/' do
    "Hello World"
  end

  #index
  get '/books' do
    @books = Book.all
    erb :'/books/index'
  end

  get '/books/new' do
    @authors = Author.all
    erb :'/books/new'
  end

  #show
  get '/books/:id' do
    # byebug
    @book = Book.find_by(id: params[:id])
    erb :'/books/show'
  end

  get '/books/:id/edit' do
    @book = Book.find(params[:id])
    erb :'/books/edit'
  end

  post '/books' do
    # byebug
    @book = Book.new(title: params[:title], author_id: params[:author_id], snippet: params[:snippet])
    @book.save
    redirect "/books/#{@book.id}"
  end

  patch '/books/:id' do
    # byebug
    @book = Book.find(params[:id])
    @book.update(title: params[:title], author: params[:author], snippet: params[:snippet])
    redirect "/books/#{@book.id}"
  end

  delete '/books/:id' do
    # byebug
    @book = Book.find(params[:id])
    @book.delete
    redirect '/books'
  end

end
