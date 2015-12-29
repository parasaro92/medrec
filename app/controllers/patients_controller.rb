class PatientsController < ApplicationController

  def index
    if current_user.profile_incomplete?
      redirect_to new_patient_path
    else
      # ...
    end
  end

  def show   
  end
end