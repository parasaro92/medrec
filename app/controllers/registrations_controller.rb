class RegistrationsController < Devise::RegistrationsController

  protected

   def after_sign_up_path_for(resource)
    return new_user_profile_path(id: current_user.id)
  end
end
