  class ShirtTopsController < ApplicationController

  def index
    @shirt_tops = ShirtTop.all
  end

  def show
    @shirt_top = ShirtTop.find_by_id(params[:id])
  end

  def new
    @shirt_top = ShirtTop.new
  end

  def create
    @shirt_top = ShirtTop.new
    @shirt_top.image_url = params[:image_url]
    @shirt_top.name = params[:name]
    @shirt_top.product_id = params[:product_id]
    @shirt_top.color = params[:color]
    @shirt_top.size = params[:size]


    if @shirt_top.save
      redirect_to shirt_tops_url
    else
      render 'new'
    end
  end

  def edit
    @shirt_top = ShirtTop.find_by_id(params[:id])
  end

  def update
    @shirt_top = ShirtTop.find_by_id(params[:id])
    @shirt_top.image_url = params[:image_url]
    @shirt_top.name = params[:name]
    @shirt_top.product_id = params[:product_id]
    @shirt_top.color = params[:color]
    @shirt_top.size = params[:size]

    if @shirt_top.save
      redirect_to shirt_tops_url
    else
      render 'new'
    end
  end

  def destroy
    @shirt_top = ShirtTop.find_by_id(params[:id])
    @shirt_top.destroy
    redirect_to shirt_tops_url
  end
end
