class UsersController < ApplicationController
  before_action :authenticate_user, except: [:new, :create]
    
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # If user saves in the db successfully:
      flash[:notice] = "Account created successfully!"
      session[:user_id] = @user.id
      redirect_to user_path
      else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      #error message
      render 'users/#{@user.id}/edit'
    end
  end

  def destroy
    @user.destroy
    session.delete :user_id
    @current_user = nil
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :password, :password_confirmation)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
