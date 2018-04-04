class BooksController < ApplicationController
	before_action :find_book, only: [:show, :edit, :update, :destroy]
	
	def index
	  @books = Book.all.order("created_at DESC")
	end

	def show
	end

	def new
	  @book = current_user.books.build
	  @genres = Genre.all.map{ |g| [g.name, g.id] }
	end

	def create
	  @book = current_user.books.build(book_params)
	  @book.category_id = params[:category_id]
	  
	  if @book.save
	  	redirect_to root_path
	  else
	  	render 'new'
	  end
	end

	def edit
	end

	def update
	  if @book.update(book_params)
		redirect_to book_path(@book)
	  else
		render 'edit'
	  end
	end

	# def destroy
	#   @book.destroy
	#   redirect_to root_path
	# end

	private

	  def book_params
	  	params.require(:book).permit(:title, :synopsis, :author, :genre_id)
	  end

	  def find_book
	  	@book = Book.find(params[:id])
	  end

end
