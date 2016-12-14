class Enrollment < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  
  validates :term, :year, presence: true

end
