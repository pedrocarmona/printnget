class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :given_name,  :presence => {:message => 'required'}
  validates :last_name,  :presence => {:message => 'required'}

  attr_accessible :email, :password, :password_confirmation, :given_name, :last_name


  def name
  	"#{given_name} #{last_name}"
  end

end
