class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end


  #no need to create a views page!
  #we are redirecting to the students show page once we activate/deactive the studenrt
  #in the controller, we are doing the logic of setting @student.active to true or false
  def activate
    @student = set_student
    @student.active = !@student.active
    @student.save!
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end