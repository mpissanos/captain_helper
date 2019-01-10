class Client < ApplicationRecord
  belongs_to :user
  has_many :trips, dependent: :destroy
  has_many :boats, through: :trips

  
end
