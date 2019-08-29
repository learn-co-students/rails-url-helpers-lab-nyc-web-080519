class StudentsController < ApplicationController
  #before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    set_student
  end

  def set_student
    @student = Student.find(params[:id])
    if @student.active == false
      @student.update(active: true)
    else
      @student.update(active: false)
    end
    redirect_to student_path(@student)
  end
end