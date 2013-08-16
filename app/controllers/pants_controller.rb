class PantsController < ApplicationController

  def index
    @pants = Pant.all
  end

  def show
    @pant = Pant.find_by_id(params[:id])
  end

  def new
    @pant = Pant.new
  end

  def create
    @pant = Pant.new
    
    if @pant.save
      redirect_to pants_url
    else
      render 'new'
    end
  end

  def edit
    @pant = Pant.find_by_id(params[:id])
  end

  def update
    @pant = Pant.find_by_id(params[:id])
    
    if @pant.save
      redirect_to pants_url
    else
      render 'new'
    end
  end

  def destroy
    @pant = Pant.find_by_id(params[:id])
    @pant.destroy
    redirect_to pants_url
  end
end
