class Message < ApplicationRecord
  belongs_to :user
  belongs_to :property_application
end
