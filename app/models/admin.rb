class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  
  #validates :email,       presence: true, uniqueness: true, confirmation: true     
  #validates :mobile,      presence: { message: "must be given please" }, uniqueness: true, length: { is: 11 }
  validates :NationalId, presence: { message: "must be given please" }, uniqueness: true, length: { is: 14 }
            
  def Admin.role
    9
  end

  
end

  