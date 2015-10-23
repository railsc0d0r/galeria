#
# Our user-model in backend for authentication and authorization
#
class User < ActiveRecord::Base
  before_save :ensure_authentication_token

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # validates login-credentials
  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email
  validates :username, length: 5..50
  validate :validate_password

  before_validation :strip_empty_passwords, on: :update
  
  def ensure_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  # overwrite devise to use email or username as login
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      # when allowing distinct User records with, e.g., "username" and "UserName"...
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end
  
  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  # convinience-methods to make code better readable
  def is_activated?
    self.activated
  end

  def is_admin?
    self.is_admin
  end
  
  private

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end

  def validate_password
    return if password.nil? || password.blank?
    errors.add :password, :must_be_different_from_email if password == email
    errors.add :password, :must_be_different_from_username if password == username
    errors.add :password, :must_not_be_this if PASSWORD_BLACKLIST[password]
    return errors[:password].empty?
  end

  def strip_empty_passwords
    self.password = nil if password && password.blank?
    self.password_confirmation = nil if password_confirmation && password_confirmation.blank?
  end
end
