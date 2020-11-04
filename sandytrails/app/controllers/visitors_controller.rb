class VisitorsController < ApplicationController
  def index
    @visitors = Visitor.all
  end

  def show
    @visitor = Visitor.find(params[:id])
  end

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(visitor_params)
    if @visitor.valid?
      @visitor.save
    redirect_to visitor_path(@visitor.id)
    else
      render :new
    end
  end

  def edit
    @visitor = Visitor.find(params[:id])
  end

  def update
    @visitor = Visitor.find(params[:id])
    @visitor.update(visitor_params)
    if @visitor.valid?
    redirect_to visitor_path(@visitor)
    else
      render :edit
    end
  end

  def destroy
    @visitor = Visitor.find(params[:id])
    @visitor.delete
    redirect_to visitors_path
  end

  def visitor_params
    params.require(:visitor).permit(:name, :age, :city, :mermaid_descendant)
  end
end
