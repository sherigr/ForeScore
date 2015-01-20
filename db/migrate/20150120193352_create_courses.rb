class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :location
      t.string :reviews
      t.string :teetime

      t.timestamps null: false
    end
  end
end
