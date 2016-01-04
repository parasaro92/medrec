class DoctorsController < ApplicationController

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      current_user.update_attribute(:profile_incomplete, false)
      redirect_to doctors_path
    else
      redirect_to new_doctor_path
    end
  end

  def index
    if current_user.profile_incomplete?
      redirect_to edit_doctor_path(:id)
    else
      redirect_to doctor_path(:id)
    end
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

    

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update

  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :gender, :qualification, :bio)
  end
end
