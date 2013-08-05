class StudentsController < ApplicationController

  before_action :authenticate_user!, :only => [:new]

    def index
     @students = Student.all
    end


  def new
    @student = Student.new
    @students = Student.find(:all)
  end

  def create
    @student = Student.new(params.require(:student).permit(:fname, :lname))
    if @student.save
    	redirect_to new_student_path
    end
  end

  def show
  	@student = Student.find(params[:id])
  end


#working area
  def update
    @student = Student.find(params[:id])

		if @student.update_attributes permitted_attributes
			redirect_to students_path
		else
			render 'edit'
		end
  end

  def edit
        @student = Student.find(params[:id])
        
  end

  def destroy

    @student = Student.find(params[:id]).destroy
    if @student.destroy
    	redirect_to students_path
    end
  end

	protected

	def permitted_attributes
		params.require(:student).permit(:fname, :lname)
	end

end
