class Asset < ApplicationRecord
  belongs_to :wallet

  def collection_title
    return "#{self.currency} #{self.amount} in #{self.asset_type}"
  end
end
