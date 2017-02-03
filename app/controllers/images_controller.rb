class ImagesController < ApplicationController
  def new
  @product = Product.all 
  end 

  def create
    url = params[:url]
    product_id= params[:product_id]
    image = Image.new(url: url, product_id: product_id)
    image.save

    flash[:success] = "Image Created"
    redirect_to "/products"
  end 
end
