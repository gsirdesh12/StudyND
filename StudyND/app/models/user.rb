class User < ActiveRecord::Base
  has_many :enrollments
  has_many :groups, through: :enrollments
  has_many :ratings
end
