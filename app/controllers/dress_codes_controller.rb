class DressCodesController < ApplicationController

  def index
    @dress_codes = DressCode.all
  end

  def show
    @dress_code = DressCode.find_by_id(params[:id])
  end

  def new
    @dress_code = DressCode.new
  end

  def create
    @dress_code = DressCode.new
    @dress_code.kind = params[:kind]

    if @dress_code.save
      redirect_to dress_codes_url
    else
      render 'new'
    end
  end

  def edit
    @dress_code = DressCode.find_by_id(params[:id])
  end

  def update
    @dress_code = DressCode.find_by_id(params[:id])
    @dress_code.kind = params[:kind]

    if @dress_code.save
      redirect_to dress_codes_url
    else
      render 'new'
    end
  end

  def destroy
    @dress_code = DressCode.find_by_id(params[:id])
    @dress_code.destroy
    redirect_to dress_codes_url
  end
end
