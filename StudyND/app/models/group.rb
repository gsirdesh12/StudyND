class Group < ActiveRecord::Base
  belongs_to :course
  has_many :users
  has_many :ratings
end
