class Doctor < ActiveRecord::Base
  has_many :consultations
  has_many :patients , through: :consultations
  belongs_to :user
end
