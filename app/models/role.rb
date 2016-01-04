class Role < ActiveRecord::Base
  module RoleName
    PATIENT  = {code: 1, name: "Patient"}
    DOCTOR   = {code: 2, name: "Doctor"}
    HOSPITAL = {code: 3, name: "Hospital"}

    def self.all
      [PATIENT, DOCTOR, HOSPITAL]
    end

    def self.all_codes
      self.all.collect{|role_data| role_data[:code]}
    end
  end

  has_many :users

  def patient?
    self.code == RoleName::PATIENT[:code]
  end

  def doctor?
    self.code == RoleName::DOCTOR[:code]
  end

  def hospital?
    self.code == RoleName::HOSPITAL[:code]
  end

  def name
    RoleName.all
      .select{|role_data| role_data[:code] == self.code}
      .first[:name]
  end
end
