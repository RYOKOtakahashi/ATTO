class UsersController < ApplicationController

	def show
		@item = Item.new
		@user = User.find(params[:id])
		@items = @user.items.all
	# 	@user = @itemf.user
	end

	# def new
	# 	@user = User.new
	# 	@item = @user.items.build
	# end

	# def destroy
 #    item = Item.find(params[:id])
 #    item.destroy
 #    redirect_to user_path(current_user.id)
	# end

	private
		def user_params
			params.require(:user).permit(:name,
																		items_attributes: [:item_name, :item_quantity, :price, :weight, :item_memo_one, :deadline, :unit, 
																			:category, :subcategory, :item_image_id, :notice_day, :author, :maker, :color, :size, :use_place, 
																			:purchase_place, :item_memo_two, :_destroy])
	    # params.require(:user).permit(:item_name, items_attributes: [:id, :item_name, :_destroy])
		end

end
