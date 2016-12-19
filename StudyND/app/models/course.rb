class Course < ActiveRecord::Base
  has_many :groups

  validates :name, presence: true
  validates :name, uniqueness: true

  validate :thats_not_a_course

  def to_s
    name
  end

  def invalid_courses
    # this needs to be a method
    ["Cooking", "Sleeping", "Harry Potter"]
  end


  private

  def thats_not_a_course
    if invalid_courses.include? name
      errors.add(:name, 'is not a valid course.')
    end
  end

end
