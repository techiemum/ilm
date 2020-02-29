class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :description
      t.numeric :cost

      t.timestamps
    end
  end
end
