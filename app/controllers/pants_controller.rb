class PantsController < ApplicationController

  def index1
    @pants = Pant.all
  end
  def index2
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
    @pant.name = params[:name]
    @pant.product_id = params[:product_id]
    @pant.color = params[:color]
    @pant.size = params[:size]
    @pant.image_url = params[:image_url]

    if @pant.save
      redirect_to pants1_url
    else
      render 'new'
    end
  end

  def edit
    @pant = Pant.find_by_id(params[:id])
  end

  def update
    @pant = Pant.find_by_id(params[:id])
    @pant.name = params[:name]
    @pant.product_id = params[:product_id]
    @pant.color = params[:color]
    @pant.size = params[:size]
    @pant.image_url = params[:image_url]

    if @pant.save
      redirect_to pants1_url
    else
      render 'new'
    end
  end

  def destroy
    @pant = Pant.find_by_id(params[:id])
    @pant.destroy
    redirect_to pants1_url
  end
end
