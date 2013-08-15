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
    @pant.image_url = params[:image_url]
    @pant.name = params[:name]
    @pant.product_id = params[:product_id]
    @pant.color = params[:color]
    @pant.size = params[:size]


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
    @pant.image_url = params[:image_url]
    @pant.name = params[:name]
    @pant.product_id = params[:product_id]
    @pant.color = params[:color]
    @pant.size = params[:size]


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
