class ProductsController < ApplicationController

	def index
    if params[:sort] == "asc"
      @product = Product.all.order(:price)
        
    elsif params[:sort] == "desc"
		  @product = Product.all.order(price: :desc)
    else 
      @product = Product.all
    end 
	end
	def show
		@product = Product.find_by(id:params[:id]) 
    
	end

	def new
	end 

	def create
      name = params[:name]
      description = params[:description]
      price = params[:price]
      image = params[:image]
      product = Product.new({name: name, description: description, image: image, price: price})
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





