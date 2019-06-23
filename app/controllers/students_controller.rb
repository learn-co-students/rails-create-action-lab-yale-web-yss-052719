class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    render :"/students/new.html.erb"
  end

  def create
   
    Student.create(first_name: params["first_name"], last_name: params["last_name"])
    @students = Student.all
    @student = @students.last 
    redirect_to("/student/#{@student.id}")
  end

end
