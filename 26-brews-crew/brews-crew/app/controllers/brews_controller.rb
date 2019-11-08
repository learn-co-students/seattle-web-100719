class BrewsController < ApplicationController
  before_action :set_brew, only:[:destroy, :show, :edit,:update]

  def index
    @brews = Brew.all
  end

  def destroy
    @brew.destroy
    redirect_to brews_path
  end

  # def show
  # end

  def new
    @brew = Brew.new
  end

  def create
    @brew = Brew.new(brew_params)
    if @brew.save
      redirect_to brew_path(@brew)
    else
      # byebug
      flash[:message] = @brew.errors.full_messages
      render :new
    end
  end

  def update
    @brew.update(brew_params)
    redirect_to brew_path(@brew)
  end

  def edit
  end

  def strongest
    @brews = Brew.strongest_brews
    render :index
  end

  private
  def brew_params
    params.require(:brew).permit(:blend_name, :notes, :origin, :strength)
  end

  def set_brew
    @brew = Brew.find(params[:id])
  end
end
