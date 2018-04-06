class FavoritebooksController < ApplicationController
  before_action :set_book
  
  def create
    if Favorite.create(favorited: @book, user: current_user)
      redirect_to @book, notice: 'book has been favorited'
    else
      redirect_to @book, alert: 'Something went wrong...*sad panda*'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @book.id, user_id: current_user.id).first.destroy
    redirect_to @book, notice: 'book is no longer in favorites'
  end
  
  private
  
  def set_book
    @book = book.find(params[:book_id] || params[:id])
  end
end