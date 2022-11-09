Student.destroy_all
Unit.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here


#  student1=Student.create(name: "John", surname: "Doe", gender: "male", password: "1234", national_id: Faker::Number.number(digits: 8), admission_number: Faker::Number.number(digits: 7), date_of_birth: "1990-01-01")
# student2=Student.create(name: "Jane", surname: "Mary", gender:"female", password: "jane@25", national_id: 87543292, admission_number: 1040531, date_of_birth: "2001-09-01")
Student.create(name: "Kevin", surname: "Guchu", gender:"male", password: "kevomel9943", national_id: Faker::Number.number(digits: 8), admission_number: Faker::Number.number(digits: 7), date_of_birth: "1998-11-23")

Student.create(name: "henri", surname: "Guchu", gender:"male", password: "youguymyguy", national_id: Faker::Number.number(digits: 8), admission_number: Faker::Number.number(digits: 7), date_of_birth: "1998-11-23")

Student.create(name: "george", surname: "nthiga", gender:"male", password: "@george 1", national_id: Faker::Number.number(digits: 8), admission_number: Faker::Number.number(digits: 7), date_of_birth: "1998-11-23")
   
Student.all.each do |student|
        3.times do
            Unit.create(name: Faker::Educator.subject, description: Faker::Lorem.sentence, code: Faker::Number.number(digits: 3), unit_grade: Faker::Number.between(from: 1, to: 100), category_id: Faker::Educator.course, student_id: student.id)
        end
    end

# puts "#{student3.name} was created"

puts "✅ Done seeding!"
