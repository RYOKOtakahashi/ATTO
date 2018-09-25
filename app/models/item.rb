class Item < ApplicationRecord

	belongs_to :user
	has_many :stars, dependent: :destroy
	validates :item_name, presence: true

	def starred_by?(user)
    stars.where(user_id: user.id).exists?
  end
  # starred_by?メソッド(別名_by?でもOK)で、引数で渡されたユーザのidがstarsテーブル内にexists?しているか調べる。
  # 存在していればTrue、存在していなければFalseを返すようにしている。

end