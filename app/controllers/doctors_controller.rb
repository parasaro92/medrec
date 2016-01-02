class DoctorsController < ApplicationController

  def index
    if current_user
      redirect_to doctors_path
    end
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      log_in @doctor
      redirect_to doctors_path
    else
      render 'new'
    end
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :email, :password, :password_confirmation)
  end
end
