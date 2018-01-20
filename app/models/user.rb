class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :skip_password_validation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  def is_member?
    return self.type == 'Member'
  end

  def is_student?
    return self.type == 'Student'
  end
  protected

  def password_required?
    return false
  end
end
