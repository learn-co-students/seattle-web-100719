class DancersController < ApplicationController

  def index
    dancers = Dancer.all

    render json: dancers
  end

  def show
    dancer = Dancer.find(params[:id])

    render json: { id: dancer.id, url: dancer.url, description: dancer.description, feedback: dancer.feedback }
  end

  def create
    dancer = Dancer.new(dancer_params)

    if dancer.save
      render json: dancer
    else
      render json: { error: 'Bad dancer, no save!' }
    end
  end

  private

  def dancer_params
    params.require(:dancer).permit(:url, :description)
  end
end