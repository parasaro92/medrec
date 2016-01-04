class DoctorsController < ApplicationController

  def new
    @doctor = Doctor.new
  end

  def index
    if current_user
      redirect_to doctors_path
    end
  end


  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      log_in @doctor
      redirect_to doctors_path
    else
      redirect_to new_doctor_path
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
    params.require(:doctor).permit()
  end
end
