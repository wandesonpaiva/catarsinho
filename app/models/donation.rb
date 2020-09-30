class Donation < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :value, numericality: { greater_than: 0 }
end
