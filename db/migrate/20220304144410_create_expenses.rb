class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :date
      t.float :amount
      t.string :currency
      t.string :category
      t.string :status, default: "default"
      t.string :description
      t.string :method
      t.references :asset, null: false, foreign_key: true
      t.references :wallet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
