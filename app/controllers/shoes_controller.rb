class ShoesController < ApplicationController

  def index1
      #@shoes = Shoe.all
      @shoes = Shoe.where(user_id: current_user.id)
  end
  def index2
    @shoes = Shoe.where(user_id: current_user.id)
  end

  def show
    @shoe = Shoe.find_by_id(params[:id])
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new
    @shoe.user_id = params[:user_id]
    @shoe.image_url = params[:image_url]
    @shoe.name = params[:name]
    @shoe.product_id = params[:product_id]
    @shoe.color = params[:color]
    @shoe.size = params[:size]

    if @shoe.save
      redirect_to shoes1_url
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
      redirect_to shoes1_url
    else
      render 'new'
    end
  end

  def destroy
    @shoe = Shoe.find_by_id(params[:id])
    @shoe.destroy
    redirect_to shoes1_url
  end
end
