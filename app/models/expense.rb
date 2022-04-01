class Expense < ApplicationRecord
  belongs_to :asset
  belongs_to :wallet

  validates_presence_of :asset
  validates_presence_of :date
  validates_presence_of :amount
end
