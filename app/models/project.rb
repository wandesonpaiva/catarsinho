class Project < ApplicationRecord

	validates :title, presence: true
	validates :description, presence: true
	validates :due_date, presence: true
	validates :target, presence: true

	validates :title, length: { maximum: 64 }
	validates :description, length: { maximum: 512 }

	validates :target, numericality: { greater_than: 0 }
	validates :target, numericality: { less_than_or_equal_to: 500 }

	validate :due_date_cannot_be_in_the_past_or_30_days_from_today

	belongs_to :user
	has_many :donations

	has_one_attached :image

	def due_date_cannot_be_in_the_past_or_30_days_from_today
		if due_date.present? and (due_date < Date.today or due_date > Date.today + 30.days)
			errors.add(:due_date, "can't be in the past or 30 days from today")
		end
	end

	def donators
		Donation.joins(:user).where(project_id: self.id).group('users.id').pluck('users.name').to_sentence
	end

	def total_received
		total = 0
		self.donations.each do |donation|
			total = total + donation.value
		end
		total
	end

	def is_expired?
		due_date.present? and due_date < Date.today
	end

end
