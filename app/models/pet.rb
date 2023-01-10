class Pet < ApplicationRecord
  belongs_to :organization
  has_one_attached :image
end
