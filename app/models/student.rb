class Student < ActiveRecord::Base
 has_many :units
 belongs_to :course
end