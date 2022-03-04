class Expense < ApplicationRecord
  belongs_to :asset
  belongs_to :wallet
end
