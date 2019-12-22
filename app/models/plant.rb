class Plant < ApplicationRecord
  has_many :flourishes
  has_many :gardens, through: :flourishes


  validates :name, presence: true, uniqueness: :true
end
