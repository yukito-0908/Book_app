class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
     # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
  end

  def edit
    @book = Book.find(params[:id])
    @books = Book.all
  end

  def books
  end

  def create
      @books = Book.all
      @book = Book.new(list_params)
      if @book.save
      flash[:notice] = "Book was successfully destroyed."
      redirect_to book_path(@book.id)
      else
        @books = Book.all
        render 'index'
      end
  end

  def update
    @books = Book.all
    @book = Book.find(params[:id])
    if @book.update(list_params)
    flash[:notice] = "Book was successfully destroyed."
    redirect_to book_path(@book.id)
    else
      render 'edit'
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
