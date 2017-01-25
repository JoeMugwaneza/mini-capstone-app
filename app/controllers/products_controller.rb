class ProductsController < ApplicationController

	def index
		@product = Product.all
	end
	def show
		@product = Product.find_by(id:params[:id])
	end

	def new
	end 

	def create
    name = params[:name]
    price = params[:price]
    description = params[:description]
    image = params[:image]
    product = Product.new({name: name, price: price, description: description, image: image})
    
    product.save

    flash[:success] = "Product Created"
    redirect_to "/products/#{product.id}"
  end

  def edit
  	@product = Product.find_by(id: params[:id])
  end 

  def update
    product = Product.find_by(id: params[:id])
    product.assign_attributes({
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image: params[:image]
    })
		product.save

		flash[:success] = "Product updated"
		redirect_to "/products/#{product.id}"
	end 

	def destroy
    @product = Product.find_by(id: params[:id])
		@product.destroy

		 flash[:danger] = "Product Deleted"
		redirect_to "/products"
	end 
end





