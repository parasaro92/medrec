class ConsultationsController < ApplicationController
  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)
    if @consultation.save
      redirect_to consultations_path
    else
      render "new"
    end
  end

  def index
    
  end

  private

  def consultation_params
    params.require(:consultation).permit(:appointment_date, :problem)
  end
end
