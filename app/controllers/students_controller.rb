class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    if !@student.active
      @student.active = true
    else
      @student.active = false
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
