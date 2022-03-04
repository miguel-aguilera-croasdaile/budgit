class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_one :wallet
  has_many :assets, through: :wallet

  after_create :create_wallet

  def create_wallet
    wallet = Wallet.new(user: self)
    wallet.save!
  end

end
