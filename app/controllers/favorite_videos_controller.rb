class FavoriteVideosController < ApplicationController
  before_action :set_video

  def create
    if Favorite.create(favorited: @video, user: @current_user)
      redirect_to @video, notice: 'Video has been favorited'
    else
      redirect_to @video, alert: 'Something went wrong...*sad panda*'
    end
  end

  def destroy
    Favorite.where(favorited_id: @video.id, user_id: @current_user.id).first.destroy
    redirect_to @video, notice: 'Video is no longer in favorites'
  end

  def show
    @favorite = Favorite.all
  end

  private

  def set_video
    @video = Video.find(params[:video_id] || params[:id])
  end
end
