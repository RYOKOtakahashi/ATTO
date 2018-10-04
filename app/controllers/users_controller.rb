class UsersController < ApplicationController

	def show
		@item = Item.new
		@user = User.find(params[:id])
		@items = @user.items.all

		#@search = Item.ransack(params[:q]) #params[:q]には検索パラメータが渡される、それを@search = Item.ransack(params[:q])としてあげれば、@searchという検索オブジェクトが作成される
		#@products = @search.result #@searchに対して@products = @search.resultとしてあげれば検索結果が得られる
		#V側でparams[:q]をいかに作るかがポイント

		if params[:item_name].present?
			@items = @items.get_by_item_name params[:item_name]
	  end
	  if params[:category].present?
			@items = @items.get_by_category params[:category]
	  end
	  unless @items.count == Item.all.count # itemsの数がitems.allから変わっているか確認
		if @items.count == 0 # itemsの数が０の時
		  @items = Item.all
		  flash.now[:notice] = "登録されていません"
		  render :action => :show and return  # showに戻り、renderをもう一度使いたいのでreturn
		elsif @items.count > 0
      flash.now[:notice] = "#{@items.count}件ありました" #{@items.count}で絞り込まれた数を表示させる
      render :action => :show and return # renderにする事で変更された情報を維持しつつnoticeを表示させる
		end
	  end

	end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user.id)
	end

	private
		def user_params
			params.require(:user).permit(:name,
				items_attributes: [:item_name, :item_quantity, :price, :weight, :item_memo_one, :deadline, :unit, 
													:category, :subcategory, :item_image_id, :notice_day, :author, :maker, :color, :size, :use_place, 
													:purchase_place, :item_memo_two, :price_unit, :_destroy])
		end

end