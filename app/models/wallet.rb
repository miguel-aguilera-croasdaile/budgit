class Wallet < ApplicationRecord
  belongs_to :user

  serialize :authorized_users, Array

  has_many :assets
  has_many :expenses

  private

end
