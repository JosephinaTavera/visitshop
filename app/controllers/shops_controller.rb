class ShopsController < ApplicationController

	def index
		@example_data = "Hello"
		@shop = Shop.all
	end

	def new
		@shop = Shop.new
	end

	def create
		@shop = Shop.new(shop_params)
		if @shop.save
			redirect_to '/shops'
		else
			redirect_to '/shops/new'
		end
	end

	def show
		@shop = Shop.find(params[:id])
	end

	def edit
		@shop = Shop.find(params[:id])
	end

	def update
		shop = Shop.find(params[:id])
		shop.update(shop_params)

		redirect_to shop
	end

	def destroy
		shop = Shop.find(params[:id])
		shop.destroy

		redirect_to shops_path
	end


	private
	def shop_params
		params.require(:shop).permit(:shop_name, :address_1, :address_2, :city, :state, :zipcode)
	end

end
