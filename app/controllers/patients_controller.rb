class PatientsController < ApplicationController
  before_action :authenticate_user!
end
