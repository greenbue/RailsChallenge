class Income < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user_id
  validates_presence_of :income_source
  validates_presence_of :amount
end
