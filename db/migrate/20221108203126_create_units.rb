class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.string :name
      t.string :description
      t.integer :code
      t.string :unit_grade
      t.string :category_id
      t.references :students, null: false, foreign_key: true
      t.integer :student_id

      t.timestamps
    end
  end
end
