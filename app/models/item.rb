class Item < ApplicationRecord

	belongs_to :user
	has_many :stars, dependent: :destroy
	validates :item_name, presence: true
	attachment :image

	def starred_by?(user)
    stars.where(user_id: user.id).exists?
  end
  # starred_by?メソッド(別名_by?でもOK)で、引数で渡されたユーザのidがstarsテーブル内にexists?しているか調べる。
  # 存在していればTrue、存在していなければFalseを返すようにしている。

  scope :get_by_category, ->(category) { where("category like ?", "%#{category}%") } # categoryによる絞り込み
	scope :get_by_item_name, ->(item_name) { where("item_name like ?", "%#{item_name}%") }

end