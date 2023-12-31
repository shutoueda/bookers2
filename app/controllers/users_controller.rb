class UsersController < ApplicationController
  
  def show
    @user = User.find(params[id])
    @books = @user.books
    @book = Book.new
  end
  
  def edit
    is_matching_login_user
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfuly."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end
  
  def index
    @users = User.all
    @books = Book.all
  
  end

end
