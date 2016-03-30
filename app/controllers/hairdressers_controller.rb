class HairdressersController < ApplicationController
  before_action :authorise, :only => [:new, :create, :edit]

  def index
    @hairdressers = Hairdresser.all
  end

  def new
    @hairdresser = Hairdresser.new
  end

  def create
  hairdresser = Hairdresser.create hairdresser_params
  redirect_to hairdresser
  end

  def edit
    @hairdresser = Hairdresser.find params[:id]
  end

  def update
  hairdresser = Hairdresser.find params[:id]
  hairdresser.update hairdresser_params
  redirect_to hairdresser
end

  def show
    @hairdresser = Hairdresser.find params[:id]
  end

  def create
  req = Cloudinary::Uploader.upload( params[:image_url] )
  Hairdresser.create( :heading => params[:heading], :image_url => req["url"])
  redirect_to root_path
  end

  private
  def authorise
    unless @current_user.admin?
      redirect_to :back
    end
  end

  def hairdresser_params
    params.require(:hairdresser).permit(:first_name, :last_name, :technique, :url, :hairdresser_id, :user_id)
  end

end
