class Exercise < ApplicationRecord
  belongs_to :workout, dependent: :destroy
  validates_presence_of :name
end
