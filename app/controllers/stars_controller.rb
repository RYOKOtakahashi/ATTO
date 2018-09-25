class StarsController < ApplicationController

	def create
    item = Item.find(params[:item_id])
    star = current_user.stars.new(item_id: item.id)
    star.save
    redirect_to user_path(current_user.id)
  end

  def destroy
    item = Item.find(params[:item_id])
    star = current_user.stars.find_by(item_id: item.id)
    star.destroy
    redirect_to user_path(current_user.id)
   end

   private
		def star_params
			params.require(:item).permit(:item_id, :user_id)
		end

end