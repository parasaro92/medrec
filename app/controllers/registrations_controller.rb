class RegistrationsController < Devise::RegistrationsController

   

  # def user_role(usr)
  #   if (usr.role_id == 1)
  #     redirect_to new_patient_path
  #   elsif (usr.role_id == 2)
  #     redirect_to new_doctos_path
  #   else
  #     redirect_to root_path
  #   end
  # end

#   protected

#    def after_sign_up_path_for(resource)
#     if user_role == 1
#       return new_patient_path
#     elsif user_role == 2
#       return new_doctor_path
#     else 
#       return root_path
#     end
#    end


end
