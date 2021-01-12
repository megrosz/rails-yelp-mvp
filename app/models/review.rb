class Review < ApplicationRecord
  RATING = (0..5).to_a
  # RATING = [0, 1, 2, 3, 4, 5].to_int.freeze
  validates :content, :rating, presence: true
  validates :rating, inclusion: {in: RATING}, numericality: { only_integer: true }
  belongs_to :restaurant
end


