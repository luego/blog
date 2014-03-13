class User < ActiveRecord::Base
  #before_create :create_login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :login
=begin
  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end
=end

  validates :username, :uniqueness => { :case_sensitive => false }

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end

  def create_login
    email = self.email.split(/@/)
    login_taken = User.where( :login => email[0]).first
    unless login_taken
      self.login = email[0]
    else
      self.login = self.email
    end
  end
=begin
  def self.find_for_database_authentication(conditions)
    self.where(:login => conditions[:email]).first || self.where(:email => conditions[:email]).first
  end
=end
end
