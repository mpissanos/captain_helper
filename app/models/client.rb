class Client < ApplicationRecord
  
  belongs_to :user
  has_many :trips
  has_many :boats, through: :trips
  
  
end