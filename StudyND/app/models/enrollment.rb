class Enrollment < ActiveRecord::Base
  belongs_to :group
  belongs_to :user

  validates :term, :user_id, :year, :group_id, presence: true

  validate :validate_year

  private

  def validate_year
    current_time = Time.new
    if !year.nil?
    if year < current_time.year
      errors.add(:year, "can't be in the past of this year")
    end
    end
  end
end
