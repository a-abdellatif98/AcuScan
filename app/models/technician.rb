# frozen_string_literal: true

class Technician < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true, confirmation: true
  # validates :mobile, presence: { message: "Must be given please" }, uniqueness: true, length: { is: 11 }
  validates :NationalId, presence: { message: 'Must be given please' }, uniqueness: true, length: { is: 14 }
end
