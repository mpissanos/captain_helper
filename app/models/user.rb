class User < ApplicationRecord
  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, 
         :omniauthable,  omniauth_providers: [:facebook]

  has_many :clients  
  has_many :boats
  has_many :trips

   #Add validations below
  
  validates :name, presence: true
  validates :email, presence: true, 'valid_email_2/email': true
  


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   
    end
  end

end
