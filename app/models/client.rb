class Client < ApplicationRecord

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable, 
        :trackable, :omniauthable,  omniauth_providers: [:facebook]
  
  belongs_to :user
  has_many :trips
  has_many :boats, through: :trips


   #Add validations below
  validates :name, presence: true
  validates :email, presence: true, 'valid_email_2/email': true

  
end
