class Garden < ApplicationRecord
  has_many :flourishes, dependent: :destroy
  has_many :plants, through: :flourishes

  validates :name, presence: true #, uniqueness: true
  validates :banner_url, presence: true
end
