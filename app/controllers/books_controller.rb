class BooksController < ApplicationController

  def create
    @book=Book.new(book_params)
    @books = Book.all
    if @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book.id)
    else
    render :index
    end
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @books=Book.find(params[:id])
  end

  def edit
    @books=Book.find(params[:id])
  end

  def update
    @books = Book.find(params[:id])
  if @books.update(book_params)
    flash.now[:success] = "Book was successfully updated."
    render :edit
  else
    flash.now[:error] = "#{@books.errors.count} error prohibited this book from being saved:"
    flash.now[:error_message] = @books.errors.full_messages.to_sentence
    render :edit
  end
end

  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
