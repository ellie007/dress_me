class ShoesController < ApplicationController

  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find_by_id(params[:id])
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new
    @shoe.image_url = params[:image_url]
    @shoe.name = params[:name]
    @shoe.product_id = params[:product_id]
    @shoe.color = params[:color]
    @shoe.size = params[:size]

    if @shoe.save
      redirect_to shoes_url
    else
      render 'new'
    end
  end

  def edit
    @shoe = Shoe.find_by_id(params[:id])
  end

  def update
    @shoe = Shoe.find_by_id(params[:id])
    @shoe.image_url = params[:image_url]
    @shoe.name = params[:name]
    @shoe.product_id = params[:product_id]
    @shoe.color = params[:color]
    @shoe.size = params[:size]

    if @shoe.save
      redirect_to shoes_url
    else
      render 'new'
    end
  end

  def destroy
    @shoe = Shoe.find_by_id(params[:id])
    @shoe.destroy
    redirect_to shoes_url
  end
end