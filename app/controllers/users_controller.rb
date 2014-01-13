class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params()) #Not the final implementation
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Reward Dragon!"
      redirect_to @user
    else
      render 'new' #send user back to new page with errors to correct
    end 
  end #create
  
  private
  
    def user_params
      return params.require(:user).permit(:name, :email, :password,
        :password_confirmation)
    end
end
