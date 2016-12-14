class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
    
  validates :stars, :description, presence: true
  validates :stars, inclusion: {in: 1..5,  message: "\"%{value}\" must be between 1 and 5." }
end
