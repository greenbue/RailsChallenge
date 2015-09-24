class Expense < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :expense_source
  validates_presence_of :expense_type
  validates_presence_of :amount
end
