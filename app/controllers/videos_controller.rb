class VideosController < ApplicationController
  before_action :authorise, :only => [:new, :create, :edit, :update]

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    video = Video.create video_params
    redirect_to video_path( video )
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    @video.update video_params
    redirect_to video_path(@video)
  end

  def show
    @video = Video.find(params[:id])
  end

  def destroy
  @video = Video.find params[:id]
  @video.destroy
  redirect_to videos_path
  end

  private
  def authorise
    unless @current_user.admin?
      redirect_to :back
    end
  end

  def video_params
    params.require(:video).permit(:id, :name, :technique, :embed_url, :url,  :hairdresser_id, :user_id)
  end

end
