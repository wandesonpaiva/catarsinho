class Donation < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :value, numericality: { greater_than: 0 }

  validate :project_is_expired?

  def project_is_expired?
    if project.is_expired?
      errors.add(:project, "project is expired")
    end
  end
end
