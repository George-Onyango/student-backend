class CreateStudent < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.string :gender
      t.string :password
      t.integer :national_id
      t.integer :admission_number
      t.references :units, null: false, foreign_key: true
      t.date :date_of_birth
    end
  end
end
