class Owner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  has_many :companies

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :given_name,  :presence => {:message => 'required'}
  validates :last_name,  :presence => {:message => 'required'}
  attr_accessible :email, :password, :password_confirmation, :given_name, :last_name, :phone


  validates_format_of :phone, :with => /\A\+?[0-9]{3}-?[0-9]{6,12}\z/ix
  def name
  	"#{given_name} #{last_name}"
  end

end
