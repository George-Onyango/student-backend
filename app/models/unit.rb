class Unit < ActiveRecord::Base
   has_many :students, through: :courses_students
    has_many :courses_students
end