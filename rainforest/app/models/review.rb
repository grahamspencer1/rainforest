class Review < ApplicationRecord
  belongs_to :product

  validates :text, presence: true
end
