class Boat < ApplicationRecord
  belongs_to :user
  has_many :trips, dependent: :destroy
  has_many :clients, through: :trips


  #Add validations below
  validates :name, presence: true
end
