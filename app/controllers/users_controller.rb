class UsersController < ApplicationController

	def show
		@item = Item.new
		@user = User.find(params[:id])
		@items = @user.items.all
	end

	private
		def user_params
			params.require(:user).permit(:name,
				items_attributes: [:item_name, :item_quantity, :price, :weight, :item_memo_one, :deadline, :unit, 
													:category, :subcategory, :item_image_id, :notice_day, :author, :maker, :color, :size, :use_place, 
													:purchase_place, :item_memo_two, :price_unit, :_destroy])
		end

end
