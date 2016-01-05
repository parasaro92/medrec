class UserProfilesController < ApplicationController
  def new
    @profile = UserProfile.new
  end

  def create
    @profile = UserProfile.new(profile_params)
    if @profile.save
      redirect_to user_profiles_path
    else
      render 'new'
    end
  end

  def index
    if current_user.profile_incomplete?
      @profiles = UserProfile.find_or_create_by(user_id: current_user.id)
      redirect_to edit_user_profile_path(id: current_user.id)
    else
      redirect_to user_profiles_path
    end
  end

  def show

  end

  def edit
  end

  private
  def profile_params
       params.require(:user_profile).permit(:name , :age , :address ,  :gender , :bloodgroop , :city )
  end
end
