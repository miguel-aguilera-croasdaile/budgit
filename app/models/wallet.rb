class Wallet < ApplicationRecord
  belongs_to :user
  has_many :assets
  has_many :expenses

  private

end
