class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
    redirect_to "/books/#{@book.id}", notice: 'You have created book successfully.'
    else
      render :index
    end
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
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    redirect_to "/books/#{@book.id}", notice: 'You have updated book successfully.'
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end


    private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
