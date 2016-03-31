class UsersController < ApplicationController
  before_action :authorise, :only => [:index]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
  user = User.find params[:id]
  user.update user_params
  redirect_to root_path
  end

def forgot
  @user = @current_user
end

def account
  @user = @current_user
  @video = @current_user.favorited_videos
end

  def index
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :email, :password, :password_confirmation, :image, :favorited_id, :embed_url)
  end

  def authorise
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end
end
