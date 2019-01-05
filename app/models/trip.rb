class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :boat
end
