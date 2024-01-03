class Appointment < ApplicationRecord
  belongs_to :user, foreign_key: 'role', primary_key: 'role'
end
