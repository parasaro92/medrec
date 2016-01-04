class HomeController < ApplicationController
  def land
    # if current_user
    #   redirect_to patients_path
    # end
  end

  def dashboard
    if current_user.patient?
      redirect_to new_patient_path
    elsif current_user.doctor? 
      redirect_to new_doctor_path
    else
      redirect_to root_path
    end
  end
end
