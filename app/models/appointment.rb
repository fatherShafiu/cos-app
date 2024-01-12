class Appointment < ApplicationRecord
  belongs_to :user
  validates :role, inclusion: { in: %w(counsellor exams_officer) }
  validates :status, inclusion: { in: %w(approved pending) }
end
