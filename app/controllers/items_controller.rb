class ItemsController < ApplicationController

	def create
		@item = Item.new(item_params)
		@item.user_id = current_user.id #userの存在しないitemができないよう、save前にuserを保存する
		@item.save
		flash[:notice] = '登録しました'
		redirect_to user_path(current_user.id)
	end

	def edit
		@item = Item.find(params[:id])
		@items = Item.all
	end

	def update
		item = Item.find(params[:id])
		item.update(item_params)
		flash[:notice] = '更新しました'
		redirect_to user_path(current_user.id)
	end

	# def update
	# 	@book = Book.new(book_params)
	# 	@book.user_id = current_user.id
 #    if  @book.save
 #    	flash[:notice] = 'successfully editted'
 #        redirect_to book_path(@book.id)
 #    else
 #    	@books = Book.all
 #    	@user = current_user
	#     render :index
	# end
	# end

	def destroy
    item = Item.find(params[:id])
    item.destroy
    flash[:notice] = '削除しました'
    redirect_to user_path(current_user.id)
	end


	private
		def item_params
			params.require(:item).permit(:user_id, :item_name, :item_quantity, :price, :weight, :item_memo_one, :deadline, :unit, :category, 
				:subcategory, :item_image_id, :notice_day, :author, :maker, :color, :size, :use_place, :purchase_place, :item_memo_two, :price_unit )
		end

end
