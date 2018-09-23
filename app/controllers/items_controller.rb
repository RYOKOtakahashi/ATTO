class ItemsController < ApplicationController

	def create
		@item = Item.new(item_params)
		@item.user_id = current_user.id #userの存在しないdrawerができないよう、save前にuserを保存する
		@item.save
		redirect_to user_path(current_user.id)
	end

	def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to user_path(current_user.id)
	end

	private
		def item_params
			params.require(:item).permit(:user_id, :item_name, :item_quantity, :price, :weight, :item_memo_one, :deadline, :unit, :category, 
				:subcategory, :item_image_id, :notice_day, :author, :maker, :color, :size, :use_place, :purchase_place, :item_memo_two )
		end

end
