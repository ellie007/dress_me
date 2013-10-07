class OutfitsController < ApplicationController

  def index
    @shirt_tops = ShirtTop.all

    if params[:shirt_top_id].present?
     # pull up the shirt corresponding to the shirt in the params hash
     @shirt_top = ShirtTop.find_by_id(params[:shirt_top_id])
    else
      # pull up a random shirt
      #@shirt_top = @shirt_tops.find(:all).sample
      @shirt_top = @shirt_tops.where(:user_id => current_user.id).sample
    end


    @pants = Pant.all

     if params[:pant_id].present?
     # pull up the shirt corresponding to the shirt in the params hash
     @pant = Pant.find_by_id(params[:pant_id])
    else
      # pull up a random shirt
      @pant = @pants.where(:user_id => current_user.id).sample
    end

    @shoes = Shoe.all

     if params[:shoe_id].present?
     # pull up the shirt corresponding to the shirt in the params hash
     @shoe = Shoe.find_by_id(params[:shoe_id])
    else
      # pull up a random shirt
      @shoe = @shoes.where(:user_id => current_user.id).sample
    end

    @outfit = Outfit.new
  end

  def index2
    @outfits = Outfit.where(user_id: current_user.id)
  end

  def show
    @outfit = Outfit.find_by_id(params[:id])
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new

    @shirt_tops = ShirtTop.all
    @pants = Pant.all
    @shoes = Shoe.all

    @outfit.user_id = params[:outfit][:user_id]
    @outfit.shirt_top_id = params[:outfit][:shirt_top_id]
    @outfit.pant_id = params[:outfit][:pant_id]
    @outfit.shoe_id = params[:outfit][:shoe_id]
    @outfit.date = params[:outfit][:date]

    if @outfit.save
      flash[:notice] = "Congratulations on your new outfit!  You look BEAUTIFUL!"
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
    @outfit.date = params[:date]
    if @outfit.save
      redirect_to '/outfits2'
    else
      render 'new'
    end
  end

  def destroy
    @outfit = Outfit.find_by_id(params[:id])
    @outfit.destroy
    redirect_to outfits2_url
  end

  def outfit_params
    params.require(:outfit).permit(:shirt_top_id, :pant_id, :shoe_id, :date, :user_id)
  end

end
