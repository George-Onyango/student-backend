class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #Unit Section
  #Create a new unit
  post "/units" do
    unit = Unit.create(name: params[:name], description: params[:description], code: params[:code], unit_grade: params[:unit_grade], category_id: params[:category_id])
    unit.to_json
  end

  get "/units" do
    units = Unit.all
    units.to_json
  end

  delete "/units/:id" do
    unit = Unit.find(params[:id])
    unit.destroy
    unit.to_json
  end

  get "/units/students/:id" do
    unit = Unit.find(params[:id])
    unit.students.to_json
  end

    #Student Section
  # Create a new Student
  post "/students" do
    student = Student.create(name: params[:name], surname: params[:surname], gender: params[:gender], password: params[:password], national_id: params[:national_id], admission_number: params[:admission_number], date_of_birth: params[:date_of_birth])
    student.to_json
  end

  patch "/students/:id" do
    student = Student.find(params[:id])
    student.update(name: params[:name], surname: params[:surname], password: params[:password], national_id: params[:national_id], admission_number: params[:admission_number], date_of_birth: params[:date_of_birth])
  end

  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json
  end

  get "/students" do
    students = Student.all
    students.to_json
  end

 
end
