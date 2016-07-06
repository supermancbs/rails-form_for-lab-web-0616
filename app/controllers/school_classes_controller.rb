require 'pry'
class SchoolClassesController < ApplicationController

  def index 
    @schoolclasses=SchoolClass.all
  end 

  def show 
    @schoolclass=SchoolClass.find(params[:id])
  end

  def new 
    @schoolclass=SchoolClass.new
  end 

  def create
    #lbinding.pry
    @schoolclass = SchoolClass.new
    @schoolclass.title = params[:school_class][:title]
    @schoolclass.room_number = params[:school_class][:room_number]
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end 

  def edit
    @schoolclass = SchoolClass.find(params[:id])

  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(params.require(:school_class).permit(:title, :room_number))
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end

 

 
end 