class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    # byebug
     @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    byebug
    # @book = Book.create(title: params[:book][:title], author: params[:book][:author], snippet: params[:book][:snippet])
    @book = Book.create(book_params)
    redirect_to "/books/#{@book.id}"
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(title: params[:book][:title], author: params[:book][:author], snippet: params[:book][:snippet])
    redirect_to "/books/#{@book.id}"
  end

  def destroy
    @book = Book.find(params[:id])
    @book.delete
    redirect_to books_path
  end

  private 

  def book_params
    params.require(:book).permit(:title, :snippet, :author_id)
  end
end
