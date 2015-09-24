class User < ActiveRecord::Base
  has_many :expenses, dependent: :destroy
  has_many :incomes, dependent: :destroy

  validates_presence_of :Name
  validates_presence_of :Age

end
