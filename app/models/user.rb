class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, 
         :omniauthable,  omniauth_providers: [:facebook]

  has_many :clients  
  has_many :boats
  has_many :trips

   #Add validations below

   
end
