class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  
  validates :email,       presence: true, uniqueness: true, confirmation: true
  #validates :mobile,      presence: true, uniqueness: true, length: { is: 11 }
  validates :NationalId,  presence: true, uniqueness: true, length: { is: 14 }
  
  
  after_initialize :role=          
  
  def role=(value=9)
    write_attribute(:Role,value)
  end

  def role
    read_attribute(:role) || 9
  end


  
end

  