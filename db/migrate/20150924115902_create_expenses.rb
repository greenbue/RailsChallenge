class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :expense_source
      t.string :expense_type
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
