class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to "/books/#{@book.id}"
  end

  def index
    @user = current_user
    @books = Book.all        #page(params[:page])
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
  end

  def destroy
  end

  def destroy
  end

    private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
