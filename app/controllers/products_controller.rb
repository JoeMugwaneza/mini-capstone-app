class ProductsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def index
    if params[:sort] == "asc"
      @products = Product.all.order(:price)
        
    elsif params[:sort] == "desc"
		  @products = Product.all.order(price: :desc)

    elsif params[:filter] == "discount"
      @products = Product.where("price <= ?", 100000)

     
    elsif params[:category]
      @products = Category.find_by(name: params[:category]).products
    

    else 
      @products = Product.all
    end 
          
	end

	def show
    if params[:id] == "random"
      @product = Product.all.sample
    else 
      @product = Product.find_by(id:params[:id]) 
    end 
    
	end

	def new
    @product = Product.new
     @suppliers = Supplier.all
    unless current_user
      flash[:message] = "Only signed in cooks can create recipes!"
      redirect_to "/signup"
    end
	end 

	def create
      name = params[:name]
      description = params[:description]
      price = params[:price]
     
      supplier_id = params[:supplier_id]
      @product = Product.new({name: name, description: description, price: price, supplier_id: supplier_id})
      
      if @product.save      

        flash[:success] = "Product Created"
        redirect_to "/products/#{product.id}"
      else 
      @suppliers = Supplier.all
      flash[:warning] = "Product NOT Created"
      render :new
      end
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
  def search
     search_query = params[:search_input]
     @products = Product.where("name LIKE? OR description LIKE?", "%#{search_query}%", "%#{search_query}%")

     if @products.empty?
       flash[:info] = "No results match #{search_query}"
     end
      render :index
   end 
end





