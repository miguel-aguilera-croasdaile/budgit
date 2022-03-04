class CreateDailyReports < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_reports do |t|
      t.string :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
