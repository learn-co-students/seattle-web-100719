class BrewsController < ApplicationController
  # get '/brews' do
  #   @brews = Brews.all
  #   erb :index
  # end

  def index
    @brews = Brew.all
    # @brews.name =
  end

  def show
    # byebug
    @brews = Brew.find(params[:id])
    @name = @brews.blend_name
    # @customers = Purchases.select_all()
  end

  def new
    @brew = Brew.new
  end

  def create
    # byebug
    @brew = Brew.new
    @brew.blend_name = params[:brew][:blend_name]
    @brew.origin = params[:brew][:origin]
    @brew.notes = params[:brew][:notes]
    @brew.strength = params[:brew][:strength]
    if @brew.save
      redirect_to brews_path
    else
      flash[:message] = "Wrong Info"
      render :new
    end
  end

  def edit
    # byebug
    @brew = Brew.find(params[:id])
  end

  def update
    @brew = Brew.find(params[:id])
    @brew.blend_name = params[:brew][:blend_name]
    @brew.origin = params[:brew][:origin]
    @brew.notes = params[:brew][:notes]
    @brew.strength = params[:brew][:strength]
    @brew.save
    redirect_to brews_path
  end

  def strongest
    @strongest_coffee = Brew.all.max_by do |coffee|
      coffee.strength
    end
  end
end
