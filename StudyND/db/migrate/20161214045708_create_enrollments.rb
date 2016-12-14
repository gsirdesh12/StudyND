class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :term
      t.integer :year

      t.timestamps null: false
    end
  end
end
