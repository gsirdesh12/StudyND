class Group < ActiveRecord::Base
  belongs_to :course
  has_many :users
  has_many :ratings
  
  validates :name, presence: true
  validates :name, uniqueness: true

  def to_s
    name
  end
  
end
