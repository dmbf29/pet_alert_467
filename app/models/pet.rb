class Pet < ApplicationRecord
  # associations -> belongs_to / has_many X
  validates :name, presence: true
  validates :address, presence: true
  SPECIES = ['dog', 'hyena', 'monkey', 'gerbil', 'goldfish']
  validates :species, presence: true, inclusion: { in: SPECIES }
  validates :date, presence: true
end
