class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :boat

  accepts_nested_attributes_for :client
  accepts_nested_attributes_for :trip

   #Add validations below

   

end
