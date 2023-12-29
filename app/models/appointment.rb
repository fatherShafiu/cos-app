class Appointment < ApplicationRecord
  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
  belongs_to :counselor, class_name: 'User', foreign_key: 'counselor_id'
end
