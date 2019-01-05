class Client < ApplicationRecord

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable, 
        :trackable, :omniauthable,  omniauth_providers: [:facebook]
  
  belongs_to :user
  has_many :trips
  has_many :boats, through: :trips


   #Add validations below

   
end
