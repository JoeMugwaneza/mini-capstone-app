class ImagesController < ApplicationController
  def new
    @products = Product.all
  end 

  def create
    url = params[:url]
    product_id = params[:product_id]
    image = Image.new(url: url, product_id: product_id)
    
    if image.save
    
    flash[:success] = "Image Created"
    end 
    
    redirect_to "/products"
  end 
end
