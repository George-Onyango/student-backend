class Course < ActiveRecord::Base
    has_many :students, through: :courses_students
    has_many :courses_students
    has_many :units
end