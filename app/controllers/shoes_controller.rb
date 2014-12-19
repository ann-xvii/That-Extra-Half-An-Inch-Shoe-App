class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end

  def new
    @shoe = Shoe.new

  end

  def create
    # Rails.logger "message..."
    # quiet assets
    logger.debug "we are inside the create method"
    @shoe = Shoe.new(shoe_params)
    logger.debug @shoe
    if @shoe.save
      redirect_to shoe_path(@shoe)
    else
      render :edit
    end
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def edit
    @shoe = Shoe.find(params[:id])
  end

  def update
    @shoe = Shoe.find(params[:id])
    if @shoe.update_attributes(shoe_params)
      redirect_to shoe_path(@shoe)
    else
      render :edit
    end
  end

  def destroy
    @shoe = Shoe.find(params[:id])
    if @shoe.destroy
      redirect_to shoes_path
    else
      redirect_to shoe_path(@shoe)
    end
  end

  private

  def shoe_params
    params.require(:shoe).permit(:name, :brand, :season, :origin, :heel, :price, :user)
  end
end



