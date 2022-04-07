class Asset < ApplicationRecord
  belongs_to :wallet
  has_many :expenses, dependent: :destroy
  validates_presence_of :currency
  validates_presence_of :amount
  validates_presence_of :asset_type

  def collection_title
    return "#{self.currency} #{self.amount} in #{self.asset_type}"
  end
end
