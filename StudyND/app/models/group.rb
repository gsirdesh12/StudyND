class Group < ActiveRecord::Base
  belongs_to :course
  has_many :users, through: :enrollments
  has_many :enrollments, dependent: :destroy
  has_many :ratings

  validates :name, presence: true
  validates :name, uniqueness: true

  validate :group_name_to_short

  def to_s
    name
  end

  private
  
  def group_name_to_short
    if name.length < 3
      errors.add(:name, 'is way too short.')
    end
  end

end
