class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  after_create :send_admin_mail
  has_many :userprojects, :dependent => :destroy, :autosave => true
  has_many :projects, through: :userprojects

     
  def send_admin_mail
    RegistrationMailer.register_message(self).deliver
  end

end
