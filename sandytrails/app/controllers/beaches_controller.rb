class BeachesController < ApplicationController
  def index
    @beaches = Beach.all
  end

  def show
    @beach = Beach.find(params[:id])
  end

  def create
    @beach = Beach.create(beach_params)
    @beach = Beach.new
    if @beach.valid? 
      @beach.save
      redirect_to beach_path(@beach.id)
    else
      render 'new'
    end
  end

  def new
    @beach = Beach.new
  end

  def edit
    @beach = Beach.find(params[:id])
  end

  def update
    @beach = Beach.find(params[:id])
    @beach.update(beach_params)
    redirect_to beach_path(@beach.id)
  end

  def destroy
    @beach_to_delete = Beach.find(params[:id])
    @beach_to_delete.delete
    redirect_to beaches_path
  end

  def beach_params
    params.require(:beach).permit(:name, :location, :open)
  end
end
