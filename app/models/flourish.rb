class Flourish < ApplicationRecord
  belongs_to :garden
  belongs_to :plant

  validates :description, presence: true
  validates :plant, uniqueness: { scope: :garden }
end
