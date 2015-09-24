class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.integer :user_id
      t.string :income_source
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
