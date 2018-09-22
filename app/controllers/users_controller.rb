class UsersController < ApplicationController

	def index
	end

	def show
		@item = Item.new
		@items = Item.all
	end

	private
		def user_params
			params.require(:user).permit(:name)
	    # params.require(:user).permit(:item_name, items_attributes: [:id, :item_name, :_destroy])
		end

end
