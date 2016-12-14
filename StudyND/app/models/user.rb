class User < ActiveRecord::Base
  has_many :enrollments
  has_many :groups, through: :enrollments
  has_many :ratings

  validates :first_name, :last_name, :email, :password, :grade, presence: true
  validates :grade, inclusion: { in: 1..4, message:  "\"%{value}\" must be between 1 and 4: 1 is First-Year, 2 is Sophomore, etc." }

  # scopes
  scope :alphabetical, -> { order(:last_name, :first_name) }
  scope :by_ratin, -> { order("rating desc")}

  private

  def get_user_rating
    puts "Here's the rating of the user"
    Rating.find_by(user_id: id)
  end
end
