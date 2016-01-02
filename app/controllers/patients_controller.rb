class PatientsController < ApplicationController

  def index 
    if current_user.profile_incomplete?
      redirect_to patient_path(:id)
    else
      redirect_to patients_path
    end
  end

  def new
    @patient = Patient.new
  end

  def show   
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save
    redirect_to patient_path(:id) 
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :age, :gender, :address, :city, :bloodgroup)
  end
end