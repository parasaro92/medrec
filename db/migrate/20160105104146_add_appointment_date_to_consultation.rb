class AddAppointmentDateToConsultation < ActiveRecord::Migration
  def change
    add_column :consultations, :appointment_date, :datetime
    add_column :consultations, :problem, :string
  end
end
