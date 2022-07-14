class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path #booksの詳細ページに飛ぶ
  end

  def index
  end

  def show
  end
  
  def edit
  end
  
  def destroy
  end

  def destroy
  end

    private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
