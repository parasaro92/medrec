class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
