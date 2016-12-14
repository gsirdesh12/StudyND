class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.int :stars
      t.text :description

      t.timestamps null: false
    end
  end
end
