class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :appointments, foreign_key: 'role', primary_key: 'role'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
         has_many :received_messages, class_name: 'Message', foreign_key: 'recipient_id'
end
