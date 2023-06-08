class Book < ApplicationRecord
  belongs_to :user
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path
    else
      render :show
    end
  
  end
end
