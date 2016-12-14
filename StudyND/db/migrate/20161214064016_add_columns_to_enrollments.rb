class AddColumnsToEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :group, index: true, foreign_key: true
    add_reference :enrollments, :user, index: true, foreign_key: true
  end
end
