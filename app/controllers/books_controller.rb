class BooksController < ApplicationController
  
  def create
    

  def index
    @books = books.all
  end

  def show
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
  
end
