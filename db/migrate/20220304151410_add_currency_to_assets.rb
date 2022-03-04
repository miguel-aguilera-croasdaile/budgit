class AddCurrencyToAssets < ActiveRecord::Migration[6.1]
  def change
    add_column :assets, :currency, :string
  end
end
