class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :date
      t.float :amount
      t.string :currency
      t.string :category
      t.string :description
      t.string :method

      t.timestamps
    end
  end
end
