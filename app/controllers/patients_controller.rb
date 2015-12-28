class PatientsController < ApplicationController
  

  def new
    @patient = Patient.new
  end

  def index
  end
  
end
