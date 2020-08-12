class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, allow_blank: false
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
  validates_associated :restaurant
end
