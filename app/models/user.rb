class User < ActiveRecord::Base
  has_many :expenses, dependent: :destroy
  has_many :incomes, dependent: :destroy
end
