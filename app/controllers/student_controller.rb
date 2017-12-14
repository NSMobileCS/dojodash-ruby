class StudentController < ApplicationController
  def index
    puts params[:id]
    @students = Student.where(dojo: Dojo.find(params[:id])).sorted
  end

  def new

  end


  def create
    @dojoid = params[:id].to_s
    Student.create(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], dojo:Dojo.find(params[:id]))
    redirect_to "/dojos/#{params[:id]}/students"
  end

  def show
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email)
    end
end
