class AddDestinationToAssets < ActiveRecord::Migration[6.1]
  def change
    add_column :assets, :destination, :string
  end
end
