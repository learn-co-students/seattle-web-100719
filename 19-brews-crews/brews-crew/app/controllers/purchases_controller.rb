class PurchasesController < ApplicationController
  # get '/purchase' do
  #   @purchase = Brews.all
  #   erb :index
  # end

  def index
    @purchases = Purchase.all
    # @purchase.name =
  end

  def show
    # byebug
    @purchase = Purchase.find(params[:id])
    @name =  @purchase.customer_name
    @price = @purchase.price
    @brew =  Brew.find(@purchase.brew_id)
    @brew_name = @brew.blend_name
  end

  def new
    @brews = Brew.all
    @purchase = Purchase.new
  end

  def create
    # byebug
    @purchase = Purchase.new
    @purchase.customer_name = params[:purchase][:customer_name]
    @purchase.price = params[:purchase][:price]
    @purchase.brew_id = params[:purchase][:brew_id]
    @purchase.save
    redirect_to "/purchases"
  end

  # def edit
  #   # byebug
  #   @brew = Purchase.find(params[:id])
  # end

  # def update
  #   @brew = Purchase.find(params[:id])
  #   @brew.blend_name = params[:brew][:blend_name]
  #   @brew.origin = params[:brew][:origin]
  #   @brew.notes = params[:brew][:notes]
  #   @brew.strength = params[:brew][:strength]
  #   @brew.save
  #   redirect_to brews_path
  # end
end
