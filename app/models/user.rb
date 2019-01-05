class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, 
         :omniauthable,  omniauth_providers: [:facebook]

  has_many :clients  
  has_many :boats
  has_many :trips

   #Add validations below
  
  validates :name, presence :true
  validates :email, presence: true, 'valid_email_2/email': true
  
  


end
