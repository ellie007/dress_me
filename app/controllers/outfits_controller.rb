class OutfitsController < ApplicationController

  def index
    @shirt_tops = ShirtTop.all
    @shirt_top = @shirt_tops.find(:all).sample

    @pants = Pant.all
    @pant = @pants.find(:all).sample

    @shoes = Shoe.all
    @shoe = @shoes.find(:all).sample
  end

  def index2
    @outfits = Outfit.all
  end

  def index3
    @shirt_tops = ShirtTop.all
    @pants = Pant.all
    @shoes = Shoe.all
  end

  def show
    @outfit = Outfit.find_by_id(params[:id])
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new
    @outfit.shirt_top_id = params[:shirt_top_id]
    @outfit.pant_id = params[:pant_id]
    @outfit.shoe_id = params[:shoe_id]

    if @outfit.save
      redirect_to outfit_url(@outfit.id)
      #redirect_to "outfits/#{@outfit.id}"
    else
      render 'new'
    end
  end

  def edit
    @outfit = Outfit.find_by_id(params[:id])
  end

  def update
    @outfit = Outfit.find_by_id(params[:id])

    if @outfit.save
      redirect_to outfits_url
    else
      render 'new'
    end
  end

  def destroy
    @outfit = Outfit.find_by_id(params[:id])
    @outfit.destroy
    redirect_to outfits_url
  end

  def outfit_params
    params.require(:outfit).permit(:shirt_top_id, :pant_id, :shoe_id)
  end

end
