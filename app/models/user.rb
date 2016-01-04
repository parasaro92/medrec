class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  belongs_to :role
  before_create :set_default_role
  has_one :patient
  has_one :doctor
  
  
  def patient?
    self.role.patient?
  end

  def doctor?
    self.role.doctor?
  end

  def hospital?
    self.role.hospital?
  end

private
  def set_default_role
    self.role ||= Role.find_by_name('Patient')
  end
end
