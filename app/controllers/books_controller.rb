class BooksController < ApplicationController
  def index

  end

  def show
    @book = Book.find(params[])
  end

  def new
     # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @book = Book.new
     @books = Book.all
  end

  def edit
  end

  def books
  end

  def create
    book = Book.new(list_params)
    book.save
    redirect_to '/books'
  end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
