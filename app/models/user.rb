class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
  has_many :stars, dependent: :destroy
  accepts_nested_attributes_for :items, allow_destroy: true

  validates :name, presence: true
  validates :encrypted_password, presence: true, uniqueness: true, length: { minimum: 4 }

  def email_required?
    false
  end

  def email_changed?
    false
  end
  # email_required?とemail_changed?をオーバーライドし、falseを返却するようにしておく。これをしないと、登録時にemailが必須になる。

end
