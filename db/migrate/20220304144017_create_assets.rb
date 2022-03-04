class CreateAssets < ActiveRecord::Migration[6.1]
  def change
    create_table :assets do |t|
      t.float :amount
      t.string :asset_type
      t.references :wallet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
