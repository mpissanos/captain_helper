class Boat < ApplicationRecord
  belongs_to :user
  has_many :trips
  has_many :clients, through: :trips


  #Add validations below
end
