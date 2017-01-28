class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :expenses, dependent: :destroy
  has_many :incomes, dependent: :destroy

  validates_presence_of :Name
  validates_presence_of :Age

end
