class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def param
    student = Student.find(params[:id])
    render json: student
  end

  def name
   # /students?name=kirby
   student = Student.find_by(last_name: params[:nameVal])
  end

end
