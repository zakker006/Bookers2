class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    #user特定するためのid
    @user = current_user

    #userに紐ずくbook全て
    @books = Book.where(user_id: current_user.id)

    #新しいbookを作るためのnew
    @newBook = Book.new

  end

  def index
  end

  def edit
    @user = User.find(params[:id] )
    
    
  end

  def update
  end

end
