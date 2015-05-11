class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :password, on: :create

  has_many :pages
  has_many :partials

  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false},
    email: true

  validates :password,
    presence: true,
    confirmation: true,
    length: { minimum: 6 }

  def self.authenticate email,password
    User.find_by_email(email).try(:authenticate, password)
  end

end
