class Property < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  scope :latest, -> { order created_at: :desc }
end
