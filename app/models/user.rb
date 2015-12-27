class User < ActiveRecord::Base

  has_secure_password

  attr_accessor :password_confirmation

  has_many :posts

  validates :username, :password_digest, presence: true
  validates_confirmation_of :password, :confirm => :password_confirmation

  def password_confirmation_matches
    unless password_confirmation == self.password
      errors.add(:password_confirmation, "must match password")
    end
  end

end
