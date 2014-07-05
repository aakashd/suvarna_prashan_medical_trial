class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :login

  module Role
    SUPERVISOR = 'supervisor'
    DOCTOR = 'doctor'
  end

  validates_presence_of :name
  validates_inclusion_of :role, :in => [Role::SUPERVISOR, Role::DOCTOR], :allow_blank => true
  
  #->Prelang (user_login:devise/username_login_support)
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(email) = :value", {value: login.downcase}]).first
    else
      where(conditions).first
    end
  end


  devise authentication_keys: [:login]
end
