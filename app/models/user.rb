class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :password, on: :create

  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false}

  validates :password,
    presence: true,
    length: { minimum: 6 }

  def self.authenticate email,password
    User.find_by_email(email).try(:authenticate, password)
  end

end
