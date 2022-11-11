class AddCourseAndJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name


      t.timestamps
    end

    create_table :courses_students, id: false do |t|
      t.belongs_to :course, index: true
      t.belongs_to :student, index: true
    end

    # create_table :students_units, id: false do |t|
    #   t.belongs_to :student, index: true
    #   t.belongs_to :unit, index: true
    # end
  end
end
