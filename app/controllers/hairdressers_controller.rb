class HairdressersController < ApplicationController
  before_action :authorise, :only => [:new, :create, :edit]

  def index
    @hairdressers = Hairdresser.all
  end

  def new
    @hairdresser = Hairdresser.new
  end

  def create
  @hairdresser = Hairdresser.create hairdresser_params
  @hairdresser.save
  redirect_to @hairdresser
  end

  def edit
    @hairdresser = Hairdresser.find params[:id]
  end

  def update
  @hairdresser = Hairdresser.find params[:id]
  @hairdresser.update hairdresser_params
  redirect_to hairdresser_path ( @hairdresser )
end

  def show
    @hairdresser = Hairdresser.find(params[:id])
  end

  def destroy
  @hairdresser = Hairdresser.find params[:id]
  @hairdresser.destroy
  redirect_to hairdressers_path
end

  private
  def authorise
    unless @current_user.admin?
      redirect_to :back
    end
  end

  def hairdresser_params
    params.require(:hairdresser).permit(:name, :discipline, :image, :blurb, :last_name, :technique, :url, :hairdresser_id, :user_id)
  end

end
