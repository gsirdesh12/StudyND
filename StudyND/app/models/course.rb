class Course < ActiveRecord::Base
  has_many :groups
  
  validates :name, presence: true
  validates :name, uniqueness: true

  def to_s
    name
  end
  
end
